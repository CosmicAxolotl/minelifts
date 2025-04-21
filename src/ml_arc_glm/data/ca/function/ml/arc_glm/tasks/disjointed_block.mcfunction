
# ===============================================================================================================================

function ca:gnr_lay/new/int

# ===============================================================================================================================

scoreboard players operation #$.id ca.ml.arc_glm.fun = @s ca.ml.arc_glm.id

tag @e[type=interaction,tag=ca.ml.arc_glm.djt_blk.snapper,tag=!snapped,tag=!already_checked,predicate=ca:ml/arc_glm/djt_blk/match_id,limit=1,x=0] add tmp
tag @e[tag=tmp,limit=1,x=0] add already_checked

execute store success storage ca:ram stack[-1].test.idle byte 1 if entity @e[tag=tmp,tag=idle,limit=1,x=0]
execute store success storage ca:ram stack[-1].test.clockwise byte 1 if entity @e[tag=tmp,tag=clockwise,limit=1,x=0]

execute if data storage ca:ram stack[-1].test{idle:true, clockwise:true} \
    facing entity @e[type=interaction,distance=..32,tag=tmp,limit=1] feet \
    positioned ^ ^ ^5 rotated as @s positioned ^ ^ ^100 facing entity @s feet \
        facing ^ ^ ^-1 positioned as @s run \
            tp @s ^0.06 ^-0.015 ^0.5 ~2 ~1.5

execute if data storage ca:ram stack[-1].test{idle:true, clockwise:false} \
    facing entity @e[type=interaction,distance=..32,tag=tmp,limit=1] feet \
    positioned ^ ^ ^5 rotated as @s positioned ^ ^ ^100 facing entity @s feet \
        facing ^ ^ ^-1 positioned as @s run \
            tp @s ^-0.06 ^0.015 ^0.5 ~-2 ~-1.5

execute if data storage ca:ram stack[-1].test{idle:false} \
    facing entity @e[type=interaction,distance=..32,tag=tmp,limit=1] feet \
    positioned ^ ^ ^7 rotated as @s positioned ^ ^ ^20 facing entity @s feet \
        facing ^ ^ ^-1 positioned as @s run \
            tp @s ^ ^0.015 ^0.5 ~ ~

execute facing entity @e[type=interaction,distance=32..,tag=tmp,limit=1] feet run \
            tp @s ^ ^0.3 ^2 ~4 ~

execute \
    if data storage ca:ram stack[-1].test{idle:false} \
    if entity @e[type=interaction,distance=..3,tag=tmp,limit=1] \
    if function ca:ml/arc_glm/tasks/private/snap \
        as @e[type=interaction,distance=..3,tag=tmp,limit=1] on vehicle run \
            return run function ca:ml/arc_glm/structure/snap

scoreboard players reset #$.success_attack ca.ml.arc_glm.fun
execute positioned ~-0.5 ~-0.5 ~-0.5 as @a[dx=0,gamemode=!creative,gamemode=!spectator] positioned ~0.5 ~0.5 ~0.5 run \
    function ca:ml/arc_glm/tasks/disjointed_block/attack

execute if score #$.success_attack ca.ml.arc_glm.fun matches 0 at @s run tp @s ~ ~ ~ facing ^ ^ ^-1
execute if score #$.success_attack ca.ml.arc_glm.fun matches 0 at @s run tp @s ^ ^ ^1.5 ~ ~


scoreboard players set #4 ca.ml.arc_glm.fun 4
scoreboard players operation #$.time_existing ca.ml.arc_glm.fun = @s ca.ml.arc_glm.time_existing
scoreboard players operation #$.time_existing ca.ml.arc_glm.fun %= #4 ca.ml.arc_glm.fun

scoreboard players add @s ca.ml.arc_glm.time_existing 1

execute unless score #$.time_existing ca.ml.arc_glm.fun matches 0 run return run \
        tag @e remove tmp

execute \
    if data storage ca:ram stack[-1].test{idle:true} \
    if predicate {condition:"random_chance",chance: 0.1} run \
        playsound entity.guardian.ambient hostile @a ~ ~ ~ 0.5 1
execute \
    if data storage ca:ram stack[-1].test{idle:true} run \
        particle dust{color:[ 0.00784313725, 0.9294117647, 0.22352941176], scale:3} ~ ~ ~ 0.1 0.1 0.1 0 3 force @a

execute \
    if data storage ca:ram stack[-1].test{idle:false} run \
        playsound entity.guardian.ambient hostile @a ~ ~ ~ 1 2
execute \
    if data storage ca:ram stack[-1].test{idle:false} run \
        particle dust{color:[ 0.98039215686, 0.69019607843, 0.06666666666], scale:3} ~ ~ ~ 0.1 0.1 0.1 0 2 force @a

tag @e remove tmp



data modify storage ca:ram stack[-1].gimbal set value [ 0.0f , 0.0f , 0.0f ]


scoreboard players operation #$.gimbal_rot.x ca.ml.arc_glm.fun = @s ca.ml.arc_glm.random_rot.x
scoreboard players operation #$.gimbal_rot.y ca.ml.arc_glm.fun = @s ca.ml.arc_glm.random_rot.y
scoreboard players operation #$.gimbal_rot.z ca.ml.arc_glm.fun = @s ca.ml.arc_glm.random_rot.z

scoreboard players operation #$.gimbal_rot.x ca.ml.arc_glm.fun += @s ca.ml.arc_glm.time_existing
scoreboard players operation #$.gimbal_rot.y ca.ml.arc_glm.fun += @s ca.ml.arc_glm.time_existing
scoreboard players operation #$.gimbal_rot.z ca.ml.arc_glm.fun += @s ca.ml.arc_glm.time_existing


execute store result storage ca:ram stack[-1].gimbal[0] float 8.0901 run scoreboard players get #$.gimbal_rot.x ca.ml.arc_glm.fun
execute store result storage ca:ram stack[-1].gimbal[1] float 1.57075 run scoreboard players get #$.gimbal_rot.y ca.ml.arc_glm.fun
execute store result storage ca:ram stack[-1].gimbal[2] float 3.38914 run scoreboard players get #$.gimbal_rot.z ca.ml.arc_glm.fun

execute if entity @s[tag=ca.ml.arc_glm.rot.x_inv] \
    store result storage ca:ram stack[-1].gimbal[0] float -8.0901 run \
        scoreboard players get #$.gimbal_rot.x ca.ml.arc_glm.fun

execute if entity @s[tag=ca.ml.arc_glm.rot.y_inv] \
    store result storage ca:ram stack[-1].gimbal[1] float -1.57075 run \
        scoreboard players get #$.gimbal_rot.y ca.ml.arc_glm.fun

execute if entity @s[tag=ca.ml.arc_glm.rot.z_inv] \
    store result storage ca:ram stack[-1].gimbal[2] float -3.38914 run \
        scoreboard players get #$.gimbal_rot.z ca.ml.arc_glm.fun

# ===============================================================================================================================

function ca:qtn/gimbal/convert


data modify storage ca:ram stack[-1].quaternions append from storage ca:ram stack[-1].result
data modify storage ca:ram stack[-1].quaternions append value [ 0.0f, -0.5f, -0.5f, -0.5f ]
data modify storage ca:ram stack[-1].quaternions append from storage ca:ram stack[-1].result

## calculate conjugate of rotation quaternion, nerd stuff basically
execute store result storage ca:ram stack[-1].quaternions[2][1] float 0.001 run \
    data get storage ca:ram stack[-1].quaternions[2][1] -1000
execute store result storage ca:ram stack[-1].quaternions[2][2] float 0.001 run \
    data get storage ca:ram stack[-1].quaternions[2][2] -1000
execute store result storage ca:ram stack[-1].quaternions[2][3] float 0.001 run \
    data get storage ca:ram stack[-1].quaternions[2][3] -1000



data modify storage ca:ram stack[-1].transformation set value {left_rotation:[],translation:[]}

data modify storage ca:ram stack[-1].transformation.left_rotation set from storage ca:ram stack[-1].result



function ca:qtn/operation/product

data modify storage ca:ram stack[-1].transformation.translation set from storage ca:ram stack[-1].result
data remove storage ca:ram stack[-1].transformation.translation[0]

data modify storage ca:ram stack[-1].transformation.left_rotation append from storage ca:ram stack[-1].transformation.left_rotation[0]
data remove storage ca:ram stack[-1].transformation.left_rotation[0]

# ===============================================================================================================================


data modify entity @s transformation merge from storage ca:ram stack[-1].transformation

# ===============================================================================================================================

function ca:gnr_lay/delete/int

# ===============================================================================================================================
