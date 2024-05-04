
# =========================================================================================================================

function ca:gnr_lay/new/int

    execute on vehicle store result storage ca:ram stack[-1].id int 1 run scoreboard players get @s ca.dvg_abl.fun
    execute as @a[predicate=ca:dvg_abl/private/fast_reference,limit=1] run function ca:dvg_abl/instance/method/private/tail_resize/get_facing

function ca:gnr_lay/delete/int

data modify storage ca:ram stack[-1] merge value {block_state:{Name:"minecraft:grindstone"}}

    execute unless data storage ca:ram stack[-1].facing{direction:"down"} unless data storage ca:ram stack[-1].facing{direction:"up"} run data modify storage ca:ram stack[-1].block_state.Properties.face set value "wall"

    execute if data storage ca:ram stack[-1].facing{direction:"south"} run data modify storage ca:ram stack[-1].block_state.Properties.facing set value "south"
    execute if data storage ca:ram stack[-1].facing{direction:"north"} run data modify storage ca:ram stack[-1].block_state.Properties.facing set value "north"
    execute if data storage ca:ram stack[-1].facing{direction:"west"} run data modify storage ca:ram stack[-1].block_state.Properties.facing set value "west"
    execute if data storage ca:ram stack[-1].facing{direction:"east"} run data modify storage ca:ram stack[-1].block_state.Properties.facing set value "east"
    execute if data storage ca:ram stack[-1].facing{direction:"down"} run data modify storage ca:ram stack[-1].block_state.Properties.face set value "ceiling"
    execute if data storage ca:ram stack[-1].facing{direction:"up"} run data modify storage ca:ram stack[-1].block_state.Properties.face set value "floor"

# =========================================================================================================================
