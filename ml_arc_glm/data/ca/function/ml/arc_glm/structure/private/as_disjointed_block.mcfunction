


execute store result score @s ca.ml.arc_glm.translation.x run data get storage ca:ram stack[-1].snapped_block_info.pos[0] 1000
execute store result score @s ca.ml.arc_glm.translation.y run data get storage ca:ram stack[-1].snapped_block_info.pos[1] 1000
execute store result score @s ca.ml.arc_glm.translation.z run data get storage ca:ram stack[-1].snapped_block_info.pos[2] 1000

execute unless data storage ca:ram stack[-1].test{block_type:"block"} on passengers run \
    data modify entity @s[type=block_display] block_state.Properties merge from storage ca:ram stack[-1].snapped_block_info.block_state

tag @s remove tmp

