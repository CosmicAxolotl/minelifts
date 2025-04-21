

data modify storage ca:ram stack[-1].input set value {  \
    pos_x: 0f,                                                  \
    pos_y: 0f,                                                  \
    pos_z: 0f                                                   \
}

data modify storage ca:ram stack[-1].input.pos_x set from storage ca:ram stack[-1].block_iterated.pos[0]
data modify storage ca:ram stack[-1].input.pos_y set from storage ca:ram stack[-1].block_iterated.pos[1]
data modify storage ca:ram stack[-1].input.pos_z set from storage ca:ram stack[-1].block_iterated.pos[2]

function ca:ml/arc_glm/new/private/iterate/summon_core with storage ca:ram stack[-1].input

return 1