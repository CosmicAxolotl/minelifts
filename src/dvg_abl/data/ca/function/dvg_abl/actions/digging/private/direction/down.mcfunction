

# ================


execute if data storage ca:ram \
    protected_stack[-1][0].input[{forward:true}] \
    store result score #$steps ca.dvg_abl.fun run \
        data get storage ca:ram stack[-1].direction.down
execute if data storage ca:ram \
    protected_stack[-1][0].input[{forward:true}] run \
        data modify storage ca:ram stack[-1].step_vector[1] set value -1

execute if data storage ca:ram \
    protected_stack[-1][0].input[{backward:true}] \
    store result score #$steps ca.dvg_abl.fun run \
        data get storage ca:ram stack[-1].direction.up
execute if data storage ca:ram \
    protected_stack[-1][0].input[{backward:true}] run \
        data modify storage ca:ram stack[-1].step_vector[1] set value 1

# ================

execute if data storage ca:ram \
    protected_stack[-1][0].input[{right:true}] \
    if entity @s[y_rotation=45..134.9] \
    store result score #$steps ca.dvg_abl.fun run \
        data get storage ca:ram stack[-1].direction.north
execute if data storage ca:ram \
    protected_stack[-1][0].input[{right:true}] \
    if entity @s[y_rotation=45..134.9] run \
        data modify storage ca:ram stack[-1].step_vector[2] set value -1


execute if data storage ca:ram \
    protected_stack[-1][0].input[{left:true}] \
    if entity @s[y_rotation=45..134.9] \
    store result score #$steps ca.dvg_abl.fun run \
        data get storage ca:ram stack[-1].direction.south
execute if data storage ca:ram \
    protected_stack[-1][0].input[{left:true}] \
    if entity @s[y_rotation=45..134.9] run \
        data modify storage ca:ram stack[-1].step_vector[2] set value 1

# ================

execute if data storage ca:ram \
    protected_stack[-1][0].input[{right:true}] \
    if entity @s[y_rotation=135..-135.1] \
    store result score #$steps ca.dvg_abl.fun run \
        data get storage ca:ram stack[-1].direction.east
execute if data storage ca:ram \
    protected_stack[-1][0].input[{right:true}] \
    if entity @s[y_rotation=135..-135.1] run \
        data modify storage ca:ram stack[-1].step_vector[0] set value 1

execute if data storage ca:ram \
    protected_stack[-1][0].input[{left:true}] \
    if entity @s[y_rotation=135..-135.1] \
    store result score #$steps ca.dvg_abl.fun run \
        data get storage ca:ram stack[-1].direction.west
execute if data storage ca:ram \
    protected_stack[-1][0].input[{left:true}] \
    if entity @s[y_rotation=135..-135.1] run \
        data modify storage ca:ram stack[-1].step_vector[0] set value -1

# ================

execute if data storage ca:ram \
    protected_stack[-1][0].input[{right:true}] \
    if entity @s[y_rotation=-135..-45.1] \
    store result score #$steps ca.dvg_abl.fun run \
        data get storage ca:ram stack[-1].direction.south
execute if data storage ca:ram \
    protected_stack[-1][0].input[{right:true}] \
    if entity @s[y_rotation=-135..-45.1] run \
        data modify storage ca:ram stack[-1].step_vector[2] set value 1

execute if data storage ca:ram \
    protected_stack[-1][0].input[{left:true}] \
    if entity @s[y_rotation=-135..-45.1] \
    store result score #$steps ca.dvg_abl.fun run \
        data get storage ca:ram stack[-1].direction.north
execute if data storage ca:ram \
    protected_stack[-1][0].input[{left:true}] \
    if entity @s[y_rotation=-135..-45.1] run \
        data modify storage ca:ram stack[-1].step_vector[2] set value -1

# ================

execute if data storage ca:ram \
    protected_stack[-1][0].input[{right:true}] \
    if entity @s[y_rotation=-45..44.9] \
    store result score #$steps ca.dvg_abl.fun run \
        data get storage ca:ram stack[-1].direction.west
execute if data storage ca:ram \
    protected_stack[-1][0].input[{right:true}] \
    if entity @s[y_rotation=-45..44.9] run \
        data modify storage ca:ram stack[-1].step_vector[0] set value -1

execute if data storage ca:ram \
    protected_stack[-1][0].input[{left:true}] \
    if entity @s[y_rotation=-45..44.9] \
    store result score #$steps ca.dvg_abl.fun run \
        data get storage ca:ram stack[-1].direction.east
execute if data storage ca:ram \
    protected_stack[-1][0].input[{left:true}] \
    if entity @s[y_rotation=-45..44.9] run \
        data modify storage ca:ram stack[-1].step_vector[0] set value 1

# ================
