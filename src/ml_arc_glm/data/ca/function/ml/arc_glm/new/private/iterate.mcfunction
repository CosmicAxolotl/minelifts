
execute unless data storage ca:ram stack[-1].platform.arrangement[] run return 0

data modify storage ca:ram stack[-1].block_iterated set from storage ca:ram stack[-1].platform.arrangement[-1]
data remove storage ca:ram stack[-1].platform.arrangement[-1]

execute \
    if data storage ca:ram stack[-1].block_iterated{type:"block"} run \
        data modify storage ca:ram stack[-1].pool set from storage ca:ram stack[-1].platform.pallete.block
execute \
    if data storage ca:ram stack[-1].block_iterated{type:"stairs"} run \
        data modify storage ca:ram stack[-1].pool set from storage ca:ram stack[-1].platform.pallete.stairs
execute \
    if data storage ca:ram stack[-1].block_iterated{type:"slab"} run \
        data modify storage ca:ram stack[-1].pool set from storage ca:ram stack[-1].platform.pallete.slab
execute \
    if data storage ca:ram stack[-1].block_iterated{type:"wall"} run \
        data modify storage ca:ram stack[-1].pool set from storage ca:ram stack[-1].platform.pallete.wall

execute if data storage ca:ram stack[-1].block_iterated{type:"core"} \
    if function ca:ml/arc_glm/new/private/iterate/core run \
    return run function ca:ml/arc_glm/new/private/iterate


summon block_display ~ ~ ~ {                                \
    transformation: {                                           \
        left_rotation:  [0f, 0f, 0f, 1f      ],                 \
        right_rotation: [ 0f,   0f,   0f,  1f],                 \
        translation:    [-.5f, -.5f, -.5f    ],                 \
        scale:          [ 1f,   1f,   1f     ]                  \
    },                                                          \
    Tags: ["tmp","ca.ml.arc_glm.djt_blk","snapped"],            \
    view_range: 0f,                                             \
    teleport_duration: 4                                        \
}

execute store result score #$.list_size ca.ml.arc_glm.fun \
    if data storage ca:ram stack[-1].pool[]

execute store result score #$.random_roll ca.ml.arc_glm.fun run \
    random value 0..2147483646

scoreboard players operation #$.random_roll ca.ml.arc_glm.fun %= #$.list_size ca.ml.arc_glm.fun

data modify storage ca:ram stack[-1].visual_aspect set value {  \
    id:"minecraft:air",                                         \
    index: 0,                                                   \
    pos_x: 0f,                                                  \
    pos_y: 0f,                                                  \
    pos_z: 0f                                                   \
}

data modify storage ca:ram stack[-1].visual_aspect.pos_x set from storage ca:ram stack[-1].block_iterated.pos[0]
data modify storage ca:ram stack[-1].visual_aspect.pos_y set from storage ca:ram stack[-1].block_iterated.pos[1]
data modify storage ca:ram stack[-1].visual_aspect.pos_z set from storage ca:ram stack[-1].block_iterated.pos[2]
data modify storage ca:ram stack[-1].visual_aspect merge from storage ca:ram stack[-1].block_iterated.block_state

execute store result storage ca:ram stack[-1].visual_aspect.index int 1 run \
    scoreboard players get #$.random_roll ca.ml.arc_glm.fun


execute as @e[type=block_display, distance=..1, tag=tmp, tag=ca.ml.arc_glm.djt_blk,limit=1] run \
    function ca:ml/arc_glm/new/private/set_visual_aspect with storage ca:ram stack[-1].visual_aspect

execute \
    if data storage ca:ram stack[-1].block_iterated{type:"block"} run \
        function ca:ml/arc_glm/new/private/iterate/block with storage ca:ram stack[-1].visual_aspect
execute \
    if data storage ca:ram stack[-1].block_iterated{type:"stairs"} run \
        function ca:ml/arc_glm/new/private/iterate/stairs with storage ca:ram stack[-1].visual_aspect
execute \
    if data storage ca:ram stack[-1].block_iterated{type:"slab"} run \
        function ca:ml/arc_glm/new/private/iterate/slab with storage ca:ram stack[-1].visual_aspect
execute \
    if data storage ca:ram stack[-1].block_iterated{type:"wall"} run \
        function ca:ml/arc_glm/new/private/iterate/wall with storage ca:ram stack[-1].visual_aspect

execute summon interaction \
    if function ca:ml/arc_glm/new/private/iterate/mount_interaction run \
        scoreboard players operation @s ca.ml.arc_glm.id = #$.id ca.ml.arc_glm.fun


function ca:ml/arc_glm/new/private/iterate

