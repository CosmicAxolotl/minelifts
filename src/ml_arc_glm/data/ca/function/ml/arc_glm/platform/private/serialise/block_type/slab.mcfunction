



data modify storage ca:ram stack[-1].platform.arrangement[-1] set value { type: "slab", pos: [ 0.0f , 0.0f, 0.0f ] }

execute if block ~ ~ ~ #minecraft:slabs[type=top] run \
    data modify storage ca:ram stack[-1].platform.arrangement[-1].block_state.type set value "top"

execute if block ~ ~ ~ #minecraft:slabs[type=bottom] run \
    data modify storage ca:ram stack[-1].platform.arrangement[-1].block_state.type set value "bottom"
