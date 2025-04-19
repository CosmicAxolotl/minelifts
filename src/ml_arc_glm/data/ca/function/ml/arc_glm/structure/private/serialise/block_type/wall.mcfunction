



data modify storage ca:ram stack[-1].structure.arrangement[-1] set value { type: "wall", pos: [ 0.0f , 0.0f, 0.0f ] }

scoreboard players add #$.sneak_peek.stairs ca.ml.arc_glm.fun 1

execute if block ~ ~ ~ #minecraft:walls[east=low] run \
    data modify storage ca:ram stack[-1].structure.arrangement[-1].block_state.east set value "low"
execute if block ~ ~ ~ #minecraft:walls[east=tall] run \
    data modify storage ca:ram stack[-1].structure.arrangement[-1].block_state.east set value "tall"
execute if block ~ ~ ~ #minecraft:walls[east=none] run \
    data modify storage ca:ram stack[-1].structure.arrangement[-1].block_state.east set value "none"

execute if block ~ ~ ~ #minecraft:walls[north=low] run \
    data modify storage ca:ram stack[-1].structure.arrangement[-1].block_state.north set value "low"
execute if block ~ ~ ~ #minecraft:walls[north=tall] run \
    data modify storage ca:ram stack[-1].structure.arrangement[-1].block_state.north set value "tall"
execute if block ~ ~ ~ #minecraft:walls[north=none] run \
    data modify storage ca:ram stack[-1].structure.arrangement[-1].block_state.north set value "none"

execute if block ~ ~ ~ #minecraft:walls[south=low] run \
    data modify storage ca:ram stack[-1].structure.arrangement[-1].block_state.south set value "low"
execute if block ~ ~ ~ #minecraft:walls[south=tall] run \
    data modify storage ca:ram stack[-1].structure.arrangement[-1].block_state.south set value "tall"
execute if block ~ ~ ~ #minecraft:walls[south=none] run \
    data modify storage ca:ram stack[-1].structure.arrangement[-1].block_state.south set value "none"

execute if block ~ ~ ~ #minecraft:walls[west=low] run \
    data modify storage ca:ram stack[-1].structure.arrangement[-1].block_state.west set value "low"
execute if block ~ ~ ~ #minecraft:walls[west=tall] run \
    data modify storage ca:ram stack[-1].structure.arrangement[-1].block_state.west set value "tall"
execute if block ~ ~ ~ #minecraft:walls[west=none] run \
    data modify storage ca:ram stack[-1].structure.arrangement[-1].block_state.west set value "none"

execute if block ~ ~ ~ #minecraft:walls[up=true] run \
    data modify storage ca:ram stack[-1].structure.arrangement[-1].block_state.up set value "true"
execute if block ~ ~ ~ #minecraft:walls[up=false] run \
    data modify storage ca:ram stack[-1].structure.arrangement[-1].block_state.up set value "false"

