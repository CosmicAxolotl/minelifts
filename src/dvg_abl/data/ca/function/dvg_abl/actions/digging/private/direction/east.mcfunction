
execute if entity @s[tag=dvg.facing.up] run return fail
execute if entity @s[tag=dvg.facing.down] run return fail

execute if data storage ca:ram \
    protected_stack[-1][0].input[{forward:true}] \
    store result score #$steps ca.dvg_abl.fun run \
        data get storage ca:ram stack[-1].direction.east
execute if data storage ca:ram \
    protected_stack[-1][0].input[{forward:true}] run \
        data modify storage ca:ram stack[-1].step_vector[0] set value 1

execute if data storage ca:ram \
    protected_stack[-1][0].input[{backward:true}] \
    store result score #$steps ca.dvg_abl.fun run \
        data get storage ca:ram stack[-1].direction.west
execute if data storage ca:ram \
    protected_stack[-1][0].input[{backward:true}] run \
        data modify storage ca:ram stack[-1].step_vector[0] set value -1

execute if data storage ca:ram \
    protected_stack[-1][0].input[{right:true}] \
    store result score #$steps ca.dvg_abl.fun run \
        data get storage ca:ram stack[-1].direction.south
execute if data storage ca:ram \
    protected_stack[-1][0].input[{right:true}] run \
        data modify storage ca:ram stack[-1].step_vector[2] set value 1

execute if data storage ca:ram \
    protected_stack[-1][0].input[{left:true}] \
    store result score #$steps ca.dvg_abl.fun run \
        data get storage ca:ram stack[-1].direction.north
execute if data storage ca:ram \
    protected_stack[-1][0].input[{left:true}] run \
        data modify storage ca:ram stack[-1].step_vector[2] set value -1

