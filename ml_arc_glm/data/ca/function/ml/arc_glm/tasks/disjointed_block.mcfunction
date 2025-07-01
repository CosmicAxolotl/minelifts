
# ===============================================================================================================================

particle dust{color:[ 0.00784313725, 0.9294117647, 0.22352941176], scale:4} ~ ~0.5 ~ 0.6 0.6 0.6 0 1 force @a[gamemode=spectator]

scoreboard players reset #$.success_attack ca.ml.arc_glm.fun
execute positioned ~-0.5 ~ ~-0.5 as @a[dx=0,gamemode=!creative,gamemode=!spectator] positioned ~0.5 ~0.5 ~0.5 run \
    function ca:ml/arc_glm/tasks/disjointed_block/attack

execute if score #$.success_attack ca.ml.arc_glm.fun matches 0 at @s run tp @s ~ ~ ~ facing ^ ^ ^-1
execute if score #$.success_attack ca.ml.arc_glm.fun matches 0 at @s run tp @s ^ ^ ^1.5 ~ ~


scoreboard players set #4 ca.ml.arc_glm.fun 128
execute store result score #$.time_existing ca.ml.arc_glm.fun run random value 0..128
scoreboard players operation #$.time_existing ca.ml.arc_glm.fun %= #4 ca.ml.arc_glm.fun

execute if score #$.time_existing ca.ml.arc_glm.fun matches 0 \
    if data storage ca:ram stack[-1].test{idle:true} run \
        playsound entity.guardian.ambient hostile @a ~ ~ ~ 0.1 1

scoreboard players set #4 ca.ml.arc_glm.fun 8
scoreboard players operation #$.time_existing ca.ml.arc_glm.fun = @s ca.ml.arc_glm.time_existing
scoreboard players operation #$.time_existing ca.ml.arc_glm.fun %= #4 ca.ml.arc_glm.fun

scoreboard players add @s ca.ml.arc_glm.time_existing 1


execute unless score #$.time_existing ca.ml.arc_glm.fun matches 0 run return 1

execute store result score #$.random_torque ca.ml.arc_glm.fun run random value -12000..12000
scoreboard players operation @s ca.ml.arc_glm.random_rot.x += #$.random_torque ca.ml.arc_glm.fun

execute store result score #$.random_torque ca.ml.arc_glm.fun run random value -12000..12000
scoreboard players operation @s ca.ml.arc_glm.random_rot.y += #$.random_torque ca.ml.arc_glm.fun

execute store result score #$.random_torque ca.ml.arc_glm.fun run random value -23000..23000
scoreboard players operation @s ca.ml.arc_glm.random_rot.z += #$.random_torque ca.ml.arc_glm.fun


execute \
    if data storage ca:ram stack[-1].test{idle:true} positioned ~ ~0.5 ~ run \
        particle dust{color:[ 0.00784313725, 0.9294117647, 0.22352941176], scale:3} ^ ^ ^-0.5 0.1 0.1 0.1 0 3 force @a

execute \
    if data storage ca:ram stack[-1].test{idle:false} positioned ~ ~0.5 ~ run \
        playsound entity.guardian.ambient hostile @a ~ ~ ~ 0.5 2
execute \
    if data storage ca:ram stack[-1].test{idle:false} run \
        particle dust{color:[ 0.98039215686, 0.69019607843, 0.06666666666], scale:3} ^ ^ ^-0.2 0.1 0.1 0.1 0 2 force @a


data modify storage ca:ram stack[-1].gimbal set value [ 0.0f , 0.0f , 0.0f ]

execute store result storage ca:ram stack[-1].gimbal[0] float 0.001 run scoreboard players get @s ca.ml.arc_glm.random_rot.x
execute store result storage ca:ram stack[-1].gimbal[1] float 0.001 run scoreboard players get @s ca.ml.arc_glm.random_rot.y
execute store result storage ca:ram stack[-1].gimbal[2] float 0.001 run scoreboard players get @s ca.ml.arc_glm.random_rot.z


function ca:qtn/gimbal/convert

execute store result score #$.quaternion.rotation.r ca.ml.arc_glm.fun run data get storage ca:ram stack[-1].result[0] 1000
execute store result score #$.quaternion.rotation.i ca.ml.arc_glm.fun run data get storage ca:ram stack[-1].result[1] 1000
execute store result score #$.quaternion.rotation.j ca.ml.arc_glm.fun run data get storage ca:ram stack[-1].result[2] 1000
execute store result score #$.quaternion.rotation.k ca.ml.arc_glm.fun run data get storage ca:ram stack[-1].result[3] 1000


scoreboard players set #1000 ca.gnr.fun 1000

scoreboard players operation #$.quaternion.a.0 ca.gnr.fun = #$.quaternion.rotation.r ca.ml.arc_glm.fun
scoreboard players operation #$.quaternion.b.0 ca.gnr.fun = #$.quaternion.rotation.i ca.ml.arc_glm.fun
scoreboard players operation #$.quaternion.c.0 ca.gnr.fun = #$.quaternion.rotation.j ca.ml.arc_glm.fun
scoreboard players operation #$.quaternion.d.0 ca.gnr.fun = #$.quaternion.rotation.k ca.ml.arc_glm.fun

scoreboard players operation #$.quaternion.a.1 ca.gnr.fun = @s ca.ml.arc_glm.previous_rotation.r
scoreboard players operation #$.quaternion.b.1 ca.gnr.fun = @s ca.ml.arc_glm.previous_rotation.x
scoreboard players operation #$.quaternion.c.1 ca.gnr.fun = @s ca.ml.arc_glm.previous_rotation.y
scoreboard players operation #$.quaternion.d.1 ca.gnr.fun = @s ca.ml.arc_glm.previous_rotation.z


scoreboard players operation #$.tmp ca.gnr.fun = #$.quaternion.a.0 ca.gnr.fun
scoreboard players operation #$.tmp ca.gnr.fun *= #$.quaternion.a.1 ca.gnr.fun
scoreboard players operation #$.quaternion.r ca.gnr.fun += #$.tmp ca.gnr.fun
scoreboard players operation #$.tmp ca.gnr.fun = #$.quaternion.b.0 ca.gnr.fun
scoreboard players operation #$.tmp ca.gnr.fun *= #$.quaternion.b.1 ca.gnr.fun
scoreboard players operation #$.quaternion.r ca.gnr.fun -= #$.tmp ca.gnr.fun
scoreboard players operation #$.tmp ca.gnr.fun = #$.quaternion.c.0 ca.gnr.fun
scoreboard players operation #$.tmp ca.gnr.fun *= #$.quaternion.c.1 ca.gnr.fun
scoreboard players operation #$.quaternion.r ca.gnr.fun -= #$.tmp ca.gnr.fun
scoreboard players operation #$.tmp ca.gnr.fun = #$.quaternion.d.0 ca.gnr.fun
scoreboard players operation #$.tmp ca.gnr.fun *= #$.quaternion.d.1 ca.gnr.fun
scoreboard players operation #$.quaternion.r ca.gnr.fun -= #$.tmp ca.gnr.fun
scoreboard players operation #$.quaternion.r ca.gnr.fun /= #1000 ca.gnr.fun
scoreboard players operation #$.tmp ca.gnr.fun = #$.quaternion.a.0 ca.gnr.fun
scoreboard players operation #$.tmp ca.gnr.fun *= #$.quaternion.b.1 ca.gnr.fun
scoreboard players operation #$.quaternion.i ca.gnr.fun += #$.tmp ca.gnr.fun
scoreboard players operation #$.tmp ca.gnr.fun = #$.quaternion.b.0 ca.gnr.fun
scoreboard players operation #$.tmp ca.gnr.fun *= #$.quaternion.a.1 ca.gnr.fun
scoreboard players operation #$.quaternion.i ca.gnr.fun += #$.tmp ca.gnr.fun
scoreboard players operation #$.tmp ca.gnr.fun = #$.quaternion.c.0 ca.gnr.fun
scoreboard players operation #$.tmp ca.gnr.fun *= #$.quaternion.d.1 ca.gnr.fun
scoreboard players operation #$.quaternion.i ca.gnr.fun += #$.tmp ca.gnr.fun
scoreboard players operation #$.tmp ca.gnr.fun = #$.quaternion.d.0 ca.gnr.fun
scoreboard players operation #$.tmp ca.gnr.fun *= #$.quaternion.c.1 ca.gnr.fun
scoreboard players operation #$.quaternion.i ca.gnr.fun -= #$.tmp ca.gnr.fun
scoreboard players operation #$.quaternion.i ca.gnr.fun /= #1000 ca.gnr.fun
scoreboard players operation #$.tmp ca.gnr.fun = #$.quaternion.a.0 ca.gnr.fun
scoreboard players operation #$.tmp ca.gnr.fun *= #$.quaternion.c.1 ca.gnr.fun
scoreboard players operation #$.quaternion.j ca.gnr.fun += #$.tmp ca.gnr.fun
scoreboard players operation #$.tmp ca.gnr.fun = #$.quaternion.b.0 ca.gnr.fun
scoreboard players operation #$.tmp ca.gnr.fun *= #$.quaternion.d.1 ca.gnr.fun
scoreboard players operation #$.quaternion.j ca.gnr.fun -= #$.tmp ca.gnr.fun
scoreboard players operation #$.tmp ca.gnr.fun = #$.quaternion.c.0 ca.gnr.fun
scoreboard players operation #$.tmp ca.gnr.fun *= #$.quaternion.a.1 ca.gnr.fun
scoreboard players operation #$.quaternion.j ca.gnr.fun += #$.tmp ca.gnr.fun
scoreboard players operation #$.tmp ca.gnr.fun = #$.quaternion.d.0 ca.gnr.fun
scoreboard players operation #$.tmp ca.gnr.fun *= #$.quaternion.b.1 ca.gnr.fun
scoreboard players operation #$.quaternion.j ca.gnr.fun += #$.tmp ca.gnr.fun
scoreboard players operation #$.quaternion.j ca.gnr.fun /= #1000 ca.gnr.fun
scoreboard players operation #$.tmp ca.gnr.fun = #$.quaternion.a.0 ca.gnr.fun
scoreboard players operation #$.tmp ca.gnr.fun *= #$.quaternion.d.1 ca.gnr.fun
scoreboard players operation #$.quaternion.k ca.gnr.fun += #$.tmp ca.gnr.fun
scoreboard players operation #$.tmp ca.gnr.fun = #$.quaternion.b.0 ca.gnr.fun
scoreboard players operation #$.tmp ca.gnr.fun *= #$.quaternion.c.1 ca.gnr.fun
scoreboard players operation #$.quaternion.k ca.gnr.fun += #$.tmp ca.gnr.fun
scoreboard players operation #$.tmp ca.gnr.fun = #$.quaternion.c.0 ca.gnr.fun
scoreboard players operation #$.tmp ca.gnr.fun *= #$.quaternion.b.1 ca.gnr.fun
scoreboard players operation #$.quaternion.k ca.gnr.fun -= #$.tmp ca.gnr.fun
scoreboard players operation #$.tmp ca.gnr.fun = #$.quaternion.d.0 ca.gnr.fun
scoreboard players operation #$.tmp ca.gnr.fun *= #$.quaternion.a.1 ca.gnr.fun
scoreboard players operation #$.quaternion.k ca.gnr.fun += #$.tmp ca.gnr.fun
scoreboard players operation #$.quaternion.k ca.gnr.fun /= #1000 ca.gnr.fun








scoreboard players operation #$.quaternion.r ca.ml.arc_glm.fun = #$.quaternion.r ca.gnr.fun
scoreboard players operation #$.quaternion.x ca.ml.arc_glm.fun = #$.quaternion.i ca.gnr.fun
scoreboard players operation #$.quaternion.y ca.ml.arc_glm.fun = #$.quaternion.j ca.gnr.fun
scoreboard players operation #$.quaternion.z ca.ml.arc_glm.fun = #$.quaternion.k ca.gnr.fun


# Normalisation of the quaternion using taylor series with 1 as known, using 4 terms
scoreboard players operation #$.quaternion.r ca.ml.arc_glm.fun *= #$.quaternion.r ca.ml.arc_glm.fun
scoreboard players operation #$.quaternion.x ca.ml.arc_glm.fun *= #$.quaternion.x ca.ml.arc_glm.fun
scoreboard players operation #$.quaternion.y ca.ml.arc_glm.fun *= #$.quaternion.y ca.ml.arc_glm.fun
scoreboard players operation #$.quaternion.z ca.ml.arc_glm.fun *= #$.quaternion.z ca.ml.arc_glm.fun

scoreboard players operation #$.squared ca.ml.arc_glm.fun = #$.quaternion.r ca.ml.arc_glm.fun
scoreboard players operation #$.squared ca.ml.arc_glm.fun += #$.quaternion.x ca.ml.arc_glm.fun
scoreboard players operation #$.squared ca.ml.arc_glm.fun += #$.quaternion.y ca.ml.arc_glm.fun
scoreboard players operation #$.squared ca.ml.arc_glm.fun += #$.quaternion.z ca.ml.arc_glm.fun


scoreboard players set #1000000 ca.ml.arc_glm.fun 1000000
scoreboard players operation #$.squared ca.ml.arc_glm.fun -= #1000000 ca.ml.arc_glm.fun
scoreboard players operation #$.squared ca.ml.arc_glm.fun /= #1000 ca.ml.arc_glm.fun

scoreboard players set #2 ca.ml.arc_glm.fun 2
scoreboard players set #3 ca.ml.arc_glm.fun 3
scoreboard players set #-4 ca.ml.arc_glm.fun -4
scoreboard players set #16 ca.ml.arc_glm.fun 16

scoreboard players set #$.taylor.c ca.ml.arc_glm.fun 1000000

scoreboard players operation #$.taylor.0 ca.ml.arc_glm.fun = #$.squared ca.ml.arc_glm.fun

scoreboard players operation #$.taylor.1 ca.ml.arc_glm.fun = #$.squared ca.ml.arc_glm.fun
scoreboard players operation #$.taylor.1 ca.ml.arc_glm.fun *= #$.squared ca.ml.arc_glm.fun

scoreboard players operation #$.taylor.2 ca.ml.arc_glm.fun = #$.taylor.1 ca.ml.arc_glm.fun
scoreboard players operation #$.taylor.2 ca.ml.arc_glm.fun *= #$.squared ca.ml.arc_glm.fun

scoreboard players operation #$.taylor.0 ca.ml.arc_glm.fun /= #2 ca.ml.arc_glm.fun

scoreboard players operation #$.taylor.1 ca.ml.arc_glm.fun /= #-4 ca.ml.arc_glm.fun

scoreboard players operation #$.taylor.2 ca.ml.arc_glm.fun /= #16 ca.ml.arc_glm.fun

scoreboard players operation #$.taylor.c ca.ml.arc_glm.fun += #$.taylor.0 ca.ml.arc_glm.fun
scoreboard players operation #$.taylor.c ca.ml.arc_glm.fun += #$.taylor.1 ca.ml.arc_glm.fun
scoreboard players operation #$.taylor.c ca.ml.arc_glm.fun += #$.taylor.2 ca.ml.arc_glm.fun

scoreboard players operation #$.taylor.c ca.ml.arc_glm.fun /= #1000 ca.ml.arc_glm.fun


scoreboard players set #$.quaternion.r ca.ml.arc_glm.fun 1000
scoreboard players set #$.quaternion.x ca.ml.arc_glm.fun 1000
scoreboard players set #$.quaternion.y ca.ml.arc_glm.fun 1000
scoreboard players set #$.quaternion.z ca.ml.arc_glm.fun 1000

scoreboard players operation #$.quaternion.r ca.ml.arc_glm.fun *= #$.quaternion.r ca.gnr.fun
scoreboard players operation #$.quaternion.x ca.ml.arc_glm.fun *= #$.quaternion.i ca.gnr.fun
scoreboard players operation #$.quaternion.y ca.ml.arc_glm.fun *= #$.quaternion.j ca.gnr.fun
scoreboard players operation #$.quaternion.z ca.ml.arc_glm.fun *= #$.quaternion.k ca.gnr.fun

scoreboard players operation #$.quaternion.r ca.ml.arc_glm.fun /= #$.taylor.c ca.ml.arc_glm.fun
scoreboard players operation #$.quaternion.x ca.ml.arc_glm.fun /= #$.taylor.c ca.ml.arc_glm.fun
scoreboard players operation #$.quaternion.y ca.ml.arc_glm.fun /= #$.taylor.c ca.ml.arc_glm.fun
scoreboard players operation #$.quaternion.z ca.ml.arc_glm.fun /= #$.taylor.c ca.ml.arc_glm.fun




# ===============================================================================================================================

data modify storage ca:ram stack[-1].transformation set value {     \
    left_rotation: [ 0f, 0f, 0f, 0f ],                              \
    translation:   [ 0f, 0f, 0f ]                                   \
}

execute store result storage ca:ram stack[-1].transformation.left_rotation[3] float 0.001 run \
    scoreboard players get #$.quaternion.r ca.ml.arc_glm.fun
execute store result storage ca:ram stack[-1].transformation.left_rotation[0] float 0.001 run \
    scoreboard players get #$.quaternion.x ca.ml.arc_glm.fun
execute store result storage ca:ram stack[-1].transformation.left_rotation[1] float 0.001 run \
    scoreboard players get #$.quaternion.y ca.ml.arc_glm.fun
execute store result storage ca:ram stack[-1].transformation.left_rotation[2] float 0.001 run \
    scoreboard players get #$.quaternion.z ca.ml.arc_glm.fun

scoreboard players operation @s ca.ml.arc_glm.previous_rotation.r = #$.quaternion.r ca.ml.arc_glm.fun
scoreboard players operation @s ca.ml.arc_glm.previous_rotation.x = #$.quaternion.x ca.ml.arc_glm.fun
scoreboard players operation @s ca.ml.arc_glm.previous_rotation.y = #$.quaternion.y ca.ml.arc_glm.fun
scoreboard players operation @s ca.ml.arc_glm.previous_rotation.z = #$.quaternion.z ca.ml.arc_glm.fun



#

scoreboard players operation #$.quaternion.a.0 ca.gnr.fun = #$.quaternion.r ca.ml.arc_glm.fun
scoreboard players operation #$.quaternion.b.0 ca.gnr.fun = #$.quaternion.x ca.ml.arc_glm.fun
scoreboard players operation #$.quaternion.c.0 ca.gnr.fun = #$.quaternion.y ca.ml.arc_glm.fun
scoreboard players operation #$.quaternion.d.0 ca.gnr.fun = #$.quaternion.z ca.ml.arc_glm.fun

scoreboard players set #$.quaternion.a.1 ca.gnr.fun 0
scoreboard players set #$.quaternion.b.1 ca.gnr.fun -500
scoreboard players set #$.quaternion.c.1 ca.gnr.fun -500
scoreboard players set #$.quaternion.d.1 ca.gnr.fun -500

scoreboard players operation #$.tmp ca.gnr.fun = #$.quaternion.a.0 ca.gnr.fun
scoreboard players operation #$.tmp ca.gnr.fun *= #$.quaternion.a.1 ca.gnr.fun
scoreboard players operation #$.quaternion.r ca.gnr.fun += #$.tmp ca.gnr.fun
scoreboard players operation #$.tmp ca.gnr.fun = #$.quaternion.b.0 ca.gnr.fun
scoreboard players operation #$.tmp ca.gnr.fun *= #$.quaternion.b.1 ca.gnr.fun
scoreboard players operation #$.quaternion.r ca.gnr.fun -= #$.tmp ca.gnr.fun
scoreboard players operation #$.tmp ca.gnr.fun = #$.quaternion.c.0 ca.gnr.fun
scoreboard players operation #$.tmp ca.gnr.fun *= #$.quaternion.c.1 ca.gnr.fun
scoreboard players operation #$.quaternion.r ca.gnr.fun -= #$.tmp ca.gnr.fun
scoreboard players operation #$.tmp ca.gnr.fun = #$.quaternion.d.0 ca.gnr.fun
scoreboard players operation #$.tmp ca.gnr.fun *= #$.quaternion.d.1 ca.gnr.fun
scoreboard players operation #$.quaternion.r ca.gnr.fun -= #$.tmp ca.gnr.fun
scoreboard players operation #$.quaternion.r ca.gnr.fun /= #1000 ca.gnr.fun
scoreboard players operation #$.tmp ca.gnr.fun = #$.quaternion.a.0 ca.gnr.fun
scoreboard players operation #$.tmp ca.gnr.fun *= #$.quaternion.b.1 ca.gnr.fun
scoreboard players operation #$.quaternion.i ca.gnr.fun += #$.tmp ca.gnr.fun
scoreboard players operation #$.tmp ca.gnr.fun = #$.quaternion.b.0 ca.gnr.fun
scoreboard players operation #$.tmp ca.gnr.fun *= #$.quaternion.a.1 ca.gnr.fun
scoreboard players operation #$.quaternion.i ca.gnr.fun += #$.tmp ca.gnr.fun
scoreboard players operation #$.tmp ca.gnr.fun = #$.quaternion.c.0 ca.gnr.fun
scoreboard players operation #$.tmp ca.gnr.fun *= #$.quaternion.d.1 ca.gnr.fun
scoreboard players operation #$.quaternion.i ca.gnr.fun += #$.tmp ca.gnr.fun
scoreboard players operation #$.tmp ca.gnr.fun = #$.quaternion.d.0 ca.gnr.fun
scoreboard players operation #$.tmp ca.gnr.fun *= #$.quaternion.c.1 ca.gnr.fun
scoreboard players operation #$.quaternion.i ca.gnr.fun -= #$.tmp ca.gnr.fun
scoreboard players operation #$.quaternion.i ca.gnr.fun /= #1000 ca.gnr.fun
scoreboard players operation #$.tmp ca.gnr.fun = #$.quaternion.a.0 ca.gnr.fun
scoreboard players operation #$.tmp ca.gnr.fun *= #$.quaternion.c.1 ca.gnr.fun
scoreboard players operation #$.quaternion.j ca.gnr.fun += #$.tmp ca.gnr.fun
scoreboard players operation #$.tmp ca.gnr.fun = #$.quaternion.b.0 ca.gnr.fun
scoreboard players operation #$.tmp ca.gnr.fun *= #$.quaternion.d.1 ca.gnr.fun
scoreboard players operation #$.quaternion.j ca.gnr.fun -= #$.tmp ca.gnr.fun
scoreboard players operation #$.tmp ca.gnr.fun = #$.quaternion.c.0 ca.gnr.fun
scoreboard players operation #$.tmp ca.gnr.fun *= #$.quaternion.a.1 ca.gnr.fun
scoreboard players operation #$.quaternion.j ca.gnr.fun += #$.tmp ca.gnr.fun
scoreboard players operation #$.tmp ca.gnr.fun = #$.quaternion.d.0 ca.gnr.fun
scoreboard players operation #$.tmp ca.gnr.fun *= #$.quaternion.b.1 ca.gnr.fun
scoreboard players operation #$.quaternion.j ca.gnr.fun += #$.tmp ca.gnr.fun
scoreboard players operation #$.quaternion.j ca.gnr.fun /= #1000 ca.gnr.fun
scoreboard players operation #$.tmp ca.gnr.fun = #$.quaternion.a.0 ca.gnr.fun
scoreboard players operation #$.tmp ca.gnr.fun *= #$.quaternion.d.1 ca.gnr.fun
scoreboard players operation #$.quaternion.k ca.gnr.fun += #$.tmp ca.gnr.fun
scoreboard players operation #$.tmp ca.gnr.fun = #$.quaternion.b.0 ca.gnr.fun
scoreboard players operation #$.tmp ca.gnr.fun *= #$.quaternion.c.1 ca.gnr.fun
scoreboard players operation #$.quaternion.k ca.gnr.fun += #$.tmp ca.gnr.fun
scoreboard players operation #$.tmp ca.gnr.fun = #$.quaternion.c.0 ca.gnr.fun
scoreboard players operation #$.tmp ca.gnr.fun *= #$.quaternion.b.1 ca.gnr.fun
scoreboard players operation #$.quaternion.k ca.gnr.fun -= #$.tmp ca.gnr.fun
scoreboard players operation #$.tmp ca.gnr.fun = #$.quaternion.d.0 ca.gnr.fun
scoreboard players operation #$.tmp ca.gnr.fun *= #$.quaternion.a.1 ca.gnr.fun
scoreboard players operation #$.quaternion.k ca.gnr.fun += #$.tmp ca.gnr.fun
scoreboard players operation #$.quaternion.k ca.gnr.fun /= #1000 ca.gnr.fun




#

scoreboard players operation #$.quaternion.a.0 ca.gnr.fun = #$.quaternion.r ca.gnr.fun
scoreboard players operation #$.quaternion.b.0 ca.gnr.fun = #$.quaternion.i ca.gnr.fun
scoreboard players operation #$.quaternion.c.0 ca.gnr.fun = #$.quaternion.j ca.gnr.fun
scoreboard players operation #$.quaternion.d.0 ca.gnr.fun = #$.quaternion.k ca.gnr.fun


scoreboard players set #$.quaternion.a.1 ca.gnr.fun 0
scoreboard players set #$.quaternion.b.1 ca.gnr.fun 0
scoreboard players set #$.quaternion.c.1 ca.gnr.fun 0
scoreboard players set #$.quaternion.d.1 ca.gnr.fun 0

scoreboard players operation #$.quaternion.a.1 ca.gnr.fun += #$.quaternion.r ca.ml.arc_glm.fun
scoreboard players operation #$.quaternion.b.1 ca.gnr.fun -= #$.quaternion.x ca.ml.arc_glm.fun
scoreboard players operation #$.quaternion.c.1 ca.gnr.fun -= #$.quaternion.y ca.ml.arc_glm.fun
scoreboard players operation #$.quaternion.d.1 ca.gnr.fun -= #$.quaternion.z ca.ml.arc_glm.fun



scoreboard players operation #$.tmp ca.gnr.fun = #$.quaternion.a.0 ca.gnr.fun
scoreboard players operation #$.tmp ca.gnr.fun *= #$.quaternion.a.1 ca.gnr.fun
scoreboard players operation #$.quaternion.r ca.gnr.fun += #$.tmp ca.gnr.fun
scoreboard players operation #$.tmp ca.gnr.fun = #$.quaternion.b.0 ca.gnr.fun
scoreboard players operation #$.tmp ca.gnr.fun *= #$.quaternion.b.1 ca.gnr.fun
scoreboard players operation #$.quaternion.r ca.gnr.fun -= #$.tmp ca.gnr.fun
scoreboard players operation #$.tmp ca.gnr.fun = #$.quaternion.c.0 ca.gnr.fun
scoreboard players operation #$.tmp ca.gnr.fun *= #$.quaternion.c.1 ca.gnr.fun
scoreboard players operation #$.quaternion.r ca.gnr.fun -= #$.tmp ca.gnr.fun
scoreboard players operation #$.tmp ca.gnr.fun = #$.quaternion.d.0 ca.gnr.fun
scoreboard players operation #$.tmp ca.gnr.fun *= #$.quaternion.d.1 ca.gnr.fun
scoreboard players operation #$.quaternion.r ca.gnr.fun -= #$.tmp ca.gnr.fun
scoreboard players operation #$.quaternion.r ca.gnr.fun /= #1000 ca.gnr.fun
scoreboard players operation #$.tmp ca.gnr.fun = #$.quaternion.a.0 ca.gnr.fun
scoreboard players operation #$.tmp ca.gnr.fun *= #$.quaternion.b.1 ca.gnr.fun
scoreboard players operation #$.quaternion.i ca.gnr.fun += #$.tmp ca.gnr.fun
scoreboard players operation #$.tmp ca.gnr.fun = #$.quaternion.b.0 ca.gnr.fun
scoreboard players operation #$.tmp ca.gnr.fun *= #$.quaternion.a.1 ca.gnr.fun
scoreboard players operation #$.quaternion.i ca.gnr.fun += #$.tmp ca.gnr.fun
scoreboard players operation #$.tmp ca.gnr.fun = #$.quaternion.c.0 ca.gnr.fun
scoreboard players operation #$.tmp ca.gnr.fun *= #$.quaternion.d.1 ca.gnr.fun
scoreboard players operation #$.quaternion.i ca.gnr.fun += #$.tmp ca.gnr.fun
scoreboard players operation #$.tmp ca.gnr.fun = #$.quaternion.d.0 ca.gnr.fun
scoreboard players operation #$.tmp ca.gnr.fun *= #$.quaternion.c.1 ca.gnr.fun
scoreboard players operation #$.quaternion.i ca.gnr.fun -= #$.tmp ca.gnr.fun
scoreboard players operation #$.quaternion.i ca.gnr.fun /= #1000 ca.gnr.fun
scoreboard players operation #$.tmp ca.gnr.fun = #$.quaternion.a.0 ca.gnr.fun
scoreboard players operation #$.tmp ca.gnr.fun *= #$.quaternion.c.1 ca.gnr.fun
scoreboard players operation #$.quaternion.j ca.gnr.fun += #$.tmp ca.gnr.fun
scoreboard players operation #$.tmp ca.gnr.fun = #$.quaternion.b.0 ca.gnr.fun
scoreboard players operation #$.tmp ca.gnr.fun *= #$.quaternion.d.1 ca.gnr.fun
scoreboard players operation #$.quaternion.j ca.gnr.fun -= #$.tmp ca.gnr.fun
scoreboard players operation #$.tmp ca.gnr.fun = #$.quaternion.c.0 ca.gnr.fun
scoreboard players operation #$.tmp ca.gnr.fun *= #$.quaternion.a.1 ca.gnr.fun
scoreboard players operation #$.quaternion.j ca.gnr.fun += #$.tmp ca.gnr.fun
scoreboard players operation #$.tmp ca.gnr.fun = #$.quaternion.d.0 ca.gnr.fun
scoreboard players operation #$.tmp ca.gnr.fun *= #$.quaternion.b.1 ca.gnr.fun
scoreboard players operation #$.quaternion.j ca.gnr.fun += #$.tmp ca.gnr.fun
scoreboard players operation #$.quaternion.j ca.gnr.fun /= #1000 ca.gnr.fun
scoreboard players operation #$.tmp ca.gnr.fun = #$.quaternion.a.0 ca.gnr.fun
scoreboard players operation #$.tmp ca.gnr.fun *= #$.quaternion.d.1 ca.gnr.fun
scoreboard players operation #$.quaternion.k ca.gnr.fun += #$.tmp ca.gnr.fun
scoreboard players operation #$.tmp ca.gnr.fun = #$.quaternion.b.0 ca.gnr.fun
scoreboard players operation #$.tmp ca.gnr.fun *= #$.quaternion.c.1 ca.gnr.fun
scoreboard players operation #$.quaternion.k ca.gnr.fun += #$.tmp ca.gnr.fun
scoreboard players operation #$.tmp ca.gnr.fun = #$.quaternion.c.0 ca.gnr.fun
scoreboard players operation #$.tmp ca.gnr.fun *= #$.quaternion.b.1 ca.gnr.fun
scoreboard players operation #$.quaternion.k ca.gnr.fun -= #$.tmp ca.gnr.fun
scoreboard players operation #$.tmp ca.gnr.fun = #$.quaternion.d.0 ca.gnr.fun
scoreboard players operation #$.tmp ca.gnr.fun *= #$.quaternion.a.1 ca.gnr.fun
scoreboard players operation #$.quaternion.k ca.gnr.fun += #$.tmp ca.gnr.fun
scoreboard players operation #$.quaternion.k ca.gnr.fun /= #1000 ca.gnr.fun


#

scoreboard players add #$.quaternion.j ca.gnr.fun 500

execute store result storage ca:ram stack[-1].transformation.translation[0] float 0.001 run \
    scoreboard players get #$.quaternion.i ca.gnr.fun
execute store result storage ca:ram stack[-1].transformation.translation[1] float 0.001 run \
    scoreboard players get #$.quaternion.j ca.gnr.fun
execute store result storage ca:ram stack[-1].transformation.translation[2] float 0.001 run \
    scoreboard players get #$.quaternion.k ca.gnr.fun

# ===============================================================================================================================

execute on passengers run data modify entity @s[type=block_display] transformation merge from storage ca:ram stack[-1].transformation

# ===============================================================================================================================

