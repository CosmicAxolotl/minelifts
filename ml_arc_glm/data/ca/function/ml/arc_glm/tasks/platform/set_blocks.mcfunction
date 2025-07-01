
execute on passengers on passengers run data modify storage ca:ram stack[-1].visual_aspect.id set from entity @s[type=block_display] block_state.Name

execute on passengers on passengers run data modify storage ca:ram stack[-1].visual_aspect merge from entity @s[type=block_display] block_state.Properties

execute on passengers on passengers run data modify entity @s[type=block_display] view_range set value 0f

execute on passengers store result storage ca:ram stack[-1].visual_aspect.pos_x float 0.001 run scoreboard players get @s ca.ml.arc_glm.translation.x
execute on passengers store result storage ca:ram stack[-1].visual_aspect.pos_y float 0.001 run scoreboard players get @s ca.ml.arc_glm.translation.y
execute on passengers store result storage ca:ram stack[-1].visual_aspect.pos_z float 0.001 run scoreboard players get @s ca.ml.arc_glm.translation.z

function ca:ml/arc_glm/new/private/iterate/block with storage ca:ram stack[-1].visual_aspect
function ca:ml/arc_glm/new/private/iterate/stairs with storage ca:ram stack[-1].visual_aspect
function ca:ml/arc_glm/new/private/iterate/slab with storage ca:ram stack[-1].visual_aspect
function ca:ml/arc_glm/new/private/iterate/wall with storage ca:ram stack[-1].visual_aspect
