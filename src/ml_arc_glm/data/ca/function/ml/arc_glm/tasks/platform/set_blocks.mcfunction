
data modify storage ca:ram stack[-1].visual_aspect.id set from entity @s block_state.Name
data modify storage ca:ram stack[-1].visual_aspect merge from entity @s block_state.Properties

data modify entity @s view_range set value 0f

execute store result storage ca:ram stack[-1].visual_aspect.pos_x float 0.001 run scoreboard players get @s ca.ml.arc_glm.count.translation.x
execute store result storage ca:ram stack[-1].visual_aspect.pos_y float 0.001 run scoreboard players get @s ca.ml.arc_glm.count.translation.y
execute store result storage ca:ram stack[-1].visual_aspect.pos_z float 0.001 run scoreboard players get @s ca.ml.arc_glm.count.translation.z

function ca:ml/arc_glm/new/private/iterate/block with storage ca:ram stack[-1].visual_aspect
function ca:ml/arc_glm/new/private/iterate/stairs with storage ca:ram stack[-1].visual_aspect
function ca:ml/arc_glm/new/private/iterate/slab with storage ca:ram stack[-1].visual_aspect
function ca:ml/arc_glm/new/private/iterate/wall with storage ca:ram stack[-1].visual_aspect
