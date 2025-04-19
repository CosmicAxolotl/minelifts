
execute if entity @s[tag=complete] run return fail

function ca:gnr_lay/new/ext

execute on passengers if entity @s[tag=jigsaw_information] run \
    data modify storage ca:ram stack[-1].jigsaw set from entity @s data


execute as @e[type=interaction, distance=..3, tag=ca.ml.arc_glm.djt_blk.snapper, tag=tmp, limit=1] run \
    function ca:ml/arc_glm/structure/private/snap/block_type



execute if data storage ca:ram stack[-1].test{block_type:"block"} run \
    data modify storage ca:ram stack[-1].pool set from storage ca:ram stack[-1].jigsaw.pool.block

execute if data storage ca:ram stack[-1].test{block_type:"stairs"} run \
    data modify storage ca:ram stack[-1].pool set from storage ca:ram stack[-1].jigsaw.pool.stairs

execute if data storage ca:ram stack[-1].test{block_type:"slab"} run \
    data modify storage ca:ram stack[-1].pool set from storage ca:ram stack[-1].jigsaw.pool.slab

execute if data storage ca:ram stack[-1].test{block_type:"wall"} run \
    data modify storage ca:ram stack[-1].pool set from storage ca:ram stack[-1].jigsaw.pool.wall

execute store result score #$.list_size ca.ml.arc_glm.fun \
    if data storage ca:ram stack[-1].pool[]

execute if score #$.list_size ca.ml.arc_glm.fun matches ..0 run tag @e remove tmp
execute if score #$.list_size ca.ml.arc_glm.fun matches ..0 run function ca:gnr_lay/delete/ext
execute if score #$.list_size ca.ml.arc_glm.fun matches ..0 run function ca:gnr_lay/delete/int
execute if score #$.list_size ca.ml.arc_glm.fun matches ..0 run return fail



ride @e[type=interaction,distance=..1,tag=tmp,tag=!idle,limit=1] mount @s

playsound minecraft:entity.blaze.hurt hostile @a ~ ~ ~ 1.5 1.4
particle flash ~ ~ ~ 0 0 0 0.5 0 force @a
particle minecraft:crit ~ ~ ~ 0.4 0.4 0.4 0.5 20 force @a
particle dust{color:[ 0.00784313725, 0.9294117647, 0.22352941176], scale:3} ~ ~ ~ 0.7 0.7 0.7 1 40 force @a

tag @s add update

tag @e[type=interaction,distance=..4,tag=tmp,tag=!idle,limit=1] add snapped

execute store result score #$.random_roll ca.ml.arc_glm.fun run \
    random value 0..2147483646


scoreboard players operation #$.random_roll ca.ml.arc_glm.fun %= #$.list_size ca.ml.arc_glm.fun


execute if score #$.random_roll ca.ml.arc_glm.fun matches 1.. run \
    function ca:ml/arc_glm/structure/private/snap/roll_pool

data modify storage ca:ram stack[-1].snapped_block_info set from storage ca:ram stack[-1].pool[-1]
data remove storage ca:ram stack[-1].pool[-1]




execute if data storage ca:ram stack[-1].test{block_type:"block"} run \
    data modify storage ca:ram stack[-1].jigsaw.pool.block set from storage ca:ram stack[-1].pool

execute if data storage ca:ram stack[-1].test{block_type:"stairs"} run \
    data modify storage ca:ram stack[-1].jigsaw.pool.stairs set from storage ca:ram stack[-1].pool

execute if data storage ca:ram stack[-1].test{block_type:"slab"} run \
    data modify storage ca:ram stack[-1].jigsaw.pool.slab set from storage ca:ram stack[-1].pool

execute if data storage ca:ram stack[-1].test{block_type:"wall"} run \
    data modify storage ca:ram stack[-1].jigsaw.pool.wall set from storage ca:ram stack[-1].pool

execute on passengers if entity @s[tag=block_mount] run \
    function ca:ml/arc_glm/structure/private/finish_snap



execute on passengers if entity @s[tag=jigsaw_information] run \
    data modify entity @s data set from storage ca:ram stack[-1].jigsaw 

execute store success storage ca:ram stack[-1].there_is.block byte 1 if data storage ca:ram stack[-1].jigsaw.pool.block[]
execute store success storage ca:ram stack[-1].there_is.stairs byte 1 if data storage ca:ram stack[-1].jigsaw.pool.stairs[]
execute store success storage ca:ram stack[-1].there_is.slab byte 1 if data storage ca:ram stack[-1].jigsaw.pool.slab[]
execute store success storage ca:ram stack[-1].there_is.wall byte 1 if data storage ca:ram stack[-1].jigsaw.pool.wall[]

execute if data storage ca:ram stack[-1].there_is{block:false, stairs:false, slab:false, wall:false} run tag @s add complete


tag @e remove tmp

function ca:gnr_lay/delete/ext

function ca:gnr_lay/delete/int

return 1


