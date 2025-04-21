

function ca:gnr_lay/new/int


data modify storage ca:ram stack[-1].input set value {      \
    pos_x: 0f,                                              \
    pos_y: 0f,                                              \
    pos_z: 0f                                               \
}

execute store result storage ca:ram stack[-1].input.pos_x float 0.001 run scoreboard players get @s ca.ml.arc_glm.count.translation.x
execute store result storage ca:ram stack[-1].input.pos_y float 0.001 run scoreboard players get @s ca.ml.arc_glm.count.translation.y
execute store result storage ca:ram stack[-1].input.pos_z float 0.001 run scoreboard players get @s ca.ml.arc_glm.count.translation.z

function ca:ml/arc_glm/delete/block with storage ca:ram stack[-1].input


function ca:gnr_lay/delete/int

