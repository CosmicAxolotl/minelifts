
function ca:ml/arc_glm/new/private/disjointed_block

execute store result score @s ca.ml.arc_glm.translation.x run data get storage ca:ram stack[-1].block_iterated.pos[0] 1000
execute store result score @s ca.ml.arc_glm.translation.y run data get storage ca:ram stack[-1].block_iterated.pos[1] 1000
execute store result score @s ca.ml.arc_glm.translation.z run data get storage ca:ram stack[-1].block_iterated.pos[2] 1000

execute on passengers store result score @s ca.ml.arc_glm.translation.x run data get storage ca:ram stack[-1].block_iterated.pos[0] 1000
execute on passengers store result score @s ca.ml.arc_glm.translation.y run data get storage ca:ram stack[-1].block_iterated.pos[1] 1000
execute on passengers store result score @s ca.ml.arc_glm.translation.z run data get storage ca:ram stack[-1].block_iterated.pos[2] 1000

$data modify storage ca:ram stack[-1].visual_aspect.id set from storage ca:ram stack[-1].pool[$(index)]
execute on passengers run data modify entity @s[type=block_display] block_state.Name set from storage ca:ram stack[-1].visual_aspect.id
execute store result score @s ca.ml.arc_glm.time_existing run scoreboard players add #$.alloc ca.ml.arc_glm.fun 1


execute \
    unless data storage ca:ram stack[-1].block_iterated{type:"block"} \
        on passengers run \
        data modify entity @s[type=block_display] \
        block_state.Properties set from storage ca:ram stack[-1].block_iterated.block_state

execute on passengers run data modify storage ca:ram stack[-1].uuid set from entity @s[type=minecraft:slime] UUID
