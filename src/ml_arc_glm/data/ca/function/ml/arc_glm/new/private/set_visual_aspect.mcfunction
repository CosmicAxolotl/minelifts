
function ca:ml/arc_glm/new/private/disjointed_block

execute store result score @s ca.ml.arc_glm.count.translation.x run data get storage ca:ram stack[-1].block_iterated.pos[0] 1000
execute store result score @s ca.ml.arc_glm.count.translation.y run data get storage ca:ram stack[-1].block_iterated.pos[1] 1000
execute store result score @s ca.ml.arc_glm.count.translation.z run data get storage ca:ram stack[-1].block_iterated.pos[2] 1000

$data modify storage ca:ram stack[-1].visual_aspect.id set from storage ca:ram stack[-1].pool[$(index)]
data modify entity @s block_state.Name set from storage ca:ram stack[-1].visual_aspect.id
execute store result score @s ca.ml.arc_glm.time_existing run random value 0..3


execute \
    unless data storage ca:ram stack[-1].block_iterated{type:"block"} run \
        data modify entity @s block_state.Properties set from storage ca:ram stack[-1].block_iterated.block_state

ride @s mount @e[type=block_display,distance=..1,tag=tmp,tag=block_mount,limit=1]

tag @s remove tmp
