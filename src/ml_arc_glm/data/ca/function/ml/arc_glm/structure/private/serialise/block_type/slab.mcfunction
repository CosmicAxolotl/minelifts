



data modify storage ca:ram stack[-1].structure.arrangement[-1] set value { type: "slab", pos: [ 0.0f , 0.0f, 0.0f ] }

scoreboard players add #$.sneak_peek.stairs ca.ml.arc_glm.fun 1

execute if block ~ ~ ~ #minecraft:slabs[type=top] run \
    data modify storage ca:ram stack[-1].structure.arrangement[-1].block_state.type set value "top"

execute if block ~ ~ ~ #minecraft:slabs[type=bottom] run \
    data modify storage ca:ram stack[-1].structure.arrangement[-1].block_state.type set value "bottom"
