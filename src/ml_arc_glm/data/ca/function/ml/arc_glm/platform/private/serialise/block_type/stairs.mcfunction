



data modify storage ca:ram stack[-1].platform.arrangement[-1] set value { type: "stairs", pos: [ 0.0f , 0.0f, 0.0f ] }

execute if block ~ ~ ~ #minecraft:stairs[facing=north] run \
    data modify storage ca:ram stack[-1].platform.arrangement[-1].block_state.facing set value "north"
execute if block ~ ~ ~ #minecraft:stairs[facing=south] run \
    data modify storage ca:ram stack[-1].platform.arrangement[-1].block_state.facing set value "south"
execute if block ~ ~ ~ #minecraft:stairs[facing=east] run \
    data modify storage ca:ram stack[-1].platform.arrangement[-1].block_state.facing set value "east"
execute if block ~ ~ ~ #minecraft:stairs[facing=west] run \
    data modify storage ca:ram stack[-1].platform.arrangement[-1].block_state.facing set value "west"

execute if block ~ ~ ~ #minecraft:stairs[half=bottom] run \
    data modify storage ca:ram stack[-1].platform.arrangement[-1].block_state.half set value "bottom"
execute if block ~ ~ ~ #minecraft:stairs[half=top] run \
    data modify storage ca:ram stack[-1].platform.arrangement[-1].block_state.half set value "top"

execute if block ~ ~ ~ #minecraft:stairs[shape=inner_left] run \
    data modify storage ca:ram stack[-1].platform.arrangement[-1].block_state.shape set value "inner_left"
execute if block ~ ~ ~ #minecraft:stairs[shape=inner_right] run \
    data modify storage ca:ram stack[-1].platform.arrangement[-1].block_state.shape set value "inner_right"
execute if block ~ ~ ~ #minecraft:stairs[shape=outer_left] run \
    data modify storage ca:ram stack[-1].platform.arrangement[-1].block_state.shape set value "outer_left"
execute if block ~ ~ ~ #minecraft:stairs[shape=outer_right] run \
    data modify storage ca:ram stack[-1].platform.arrangement[-1].block_state.shape set value "outer_right"
execute if block ~ ~ ~ #minecraft:stairs[shape=straight] run \
    data modify storage ca:ram stack[-1].platform.arrangement[-1].block_state.shape set value "straight"


