
# =========================================================================================================================

function ca:gnr_lay/new/ext

# =========================================================================================================================

advancement revoke @s only ca:dvg_abl/trigger

data modify storage ca:ram stack[-1] merge value {\
    log_entry:{\
        function:"ca:dvg_abl/new/instance",\
        type:"ERROR",\
        msg:"The targeted entity is not a player!"\
    }\
}

execute if entity @s[type=!minecraft:player] if function ca:ml/core/log/generate_entry run return run function ca:gnr_lay/delete/ext

data modify storage ca:ram stack[-1] merge value {\
    log_entry:{\
        function:"ca:dvg_abl/new/instance",\
        type:"ERROR",\
        msg:"The player doesn't met the conditions to start an instance of Delving Ability!"\
    }\
}
execute unless function ca:dvg_abl/check if function ca:ml/core/log/generate_entry run return run function ca:gnr_lay/delete/ext

# =========================================================================================================================

gamemode spectator @s

function ca:dvg_abl/instance/constructor

# =========================================================================================================================

execute store result storage ca:ram stack[-1].storage.0 int 1 run scoreboard players get @s ml.gnr.uuid_cache.0
execute store result storage ca:ram stack[-1].storage.1 int 1 run scoreboard players get @s ml.gnr.uuid_cache.1
execute store result storage ca:ram stack[-1].storage.2 int 1 run scoreboard players get @s ml.gnr.uuid_cache.2
execute store result storage ca:ram stack[-1].storage.3 int 1 run scoreboard players get @s ml.gnr.uuid_cache.3

function ca:dvg_abl/new/instance/store_list with storage ca:ram stack[-1].storage

# =========================================================================================================================

function ca:gnr_lay/new/int

    function ca:dvg_abl/new/instance/allocate_fast_reference

function ca:gnr_lay/delete/int


tag @s add tmp
    execute unless block ~ ~ ~ #ca:dvg_abl/air if block ~ ~ ~ #ca:dvg_abl/travel_block positioned ~ ~ ~ align xyz summon marker if function ca:dvg_abl/new/instance/get_pos run kill @s
    execute if block ~ ~ ~ #ca:dvg_abl/air positioned ~ ~-1 ~ if block ~ ~ ~ #ca:dvg_abl/travel_block summon marker if function ca:dvg_abl/new/instance/get_pos run kill @s
tag @s remove tmp

# =========================================================================================================================

tag @s add dvg_abl

tag @s remove dvg_abl.facing.south
tag @s remove dvg_abl.facing.north
tag @s remove dvg_abl.facing.west
tag @s remove dvg_abl.facing.east
tag @s remove dvg_abl.facing.down
tag @s remove dvg_abl.facing.up

effect give @s minecraft:blindness infinite 0 true
effect give @s minecraft:invisibility infinite 0 true

function ca:dvg_abl/get/reference_list
    function ca:dvg_abl/new/instance/extra_tasks with storage ca:ram stack[-1].reference_list

execute if predicate ca:gnr/input/sprint run data modify storage ca:ram stack[0].input set value [{backward:true}]
execute if predicate ca:gnr/input/sprint run tag @s add dvg_abl.facing.down
execute if predicate ca:gnr/input/sprint run tag @s add dvg_abl.quick_jump_boost


execute if entity @s[tag=!dvg_abl.quick_jump_boost] run function ca:dvg_abl/method/pivot/resonance

# =========================================================================================================================

execute if entity @s[tag=!dvg_abl.quick_jump_boost] run execute positioned ~ ~512 ~ on vehicle run function ca:dvg_abl/instance/method/private/positionate

scoreboard players set @s ca.dvg_abl.cooldown 12
schedule function ca:dvg_abl/main 1t replace

execute if predicate ca:gnr/input/sprint run scoreboard players set @s ca.dvg_abl.cooldown -1
execute if predicate ca:gnr/input/sprint run function ca:dvg_abl/actions/digging
execute if predicate ca:gnr/input/sprint run schedule function ca:dvg_abl/quick_jump_boost 1t

function ca:gnr_lay/delete/ext

# =========================================================================================================================
