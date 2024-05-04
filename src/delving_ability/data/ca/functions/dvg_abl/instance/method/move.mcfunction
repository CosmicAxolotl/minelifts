
# =========================================================================================================================

function ca:gnr_lay/new/int

# =========================================================================================================================

data modify storage ca:ram stack[-1].move set value {direction:"NAN",steps:1} 
    execute if entity @s[tag=dvg_abl.facing.south] run data modify storage ca:ram stack[-1].move.direction set value "south"
    execute if entity @s[tag=dvg_abl.facing.north] run data modify storage ca:ram stack[-1].move.direction set value "north"
    execute if entity @s[tag=dvg_abl.facing.west] run data modify storage ca:ram stack[-1].move.direction set value "west"
    execute if entity @s[tag=dvg_abl.facing.east] run data modify storage ca:ram stack[-1].move.direction set value "east"
    execute if entity @s[tag=dvg_abl.facing.down] run data modify storage ca:ram stack[-1].move.direction set value "down"
    execute if entity @s[tag=dvg_abl.facing.up] run data modify storage ca:ram stack[-1].move.direction set value "up"

execute if score #$steps ca.dvg_abl.fun matches 0.. store result storage ca:ram stack[-1].move.steps int 1 run scoreboard players get #$steps ca.dvg_abl.fun
execute if score #$steps ca.dvg_abl.fun matches ..-1 store result storage ca:ram stack[-1].move.steps int -1 run scoreboard players get #$steps ca.dvg_abl.fun

# =========================================================================================================================

function ca:dvg_abl/instance/method/update_minimap

# =========================================================================================================================

execute store result score #$steps ca.dvg_abl.fun run data get storage ca:ram stack[-1].move.steps

scoreboard players set #$move.x ca.dvg_abl.fun 0
scoreboard players set #$move.y ca.dvg_abl.fun 0
scoreboard players set #$move.z ca.dvg_abl.fun 0

    execute if data storage ca:ram stack[-1].move{direction:"south"} run scoreboard players set #$move.z ca.dvg_abl.fun 1
    execute if data storage ca:ram stack[-1].move{direction:"north"} run scoreboard players set #$move.z ca.dvg_abl.fun -1
    execute if data storage ca:ram stack[-1].move{direction:"east"} run scoreboard players set #$move.x ca.dvg_abl.fun 1
    execute if data storage ca:ram stack[-1].move{direction:"west"} run scoreboard players set #$move.x ca.dvg_abl.fun -1
    execute if data storage ca:ram stack[-1].move{direction:"down"} run scoreboard players set #$move.y ca.dvg_abl.fun -1
    execute if data storage ca:ram stack[-1].move{direction:"up"} run scoreboard players set #$move.y ca.dvg_abl.fun 1

    scoreboard players operation #$move.x ca.dvg_abl.fun *= #$steps ca.dvg_abl.fun
    scoreboard players operation #$move.y ca.dvg_abl.fun *= #$steps ca.dvg_abl.fun
    scoreboard players operation #$move.z ca.dvg_abl.fun *= #$steps ca.dvg_abl.fun


scoreboard players operation @s ca.dvg_abl.tail.rdc.x += #$move.x ca.dvg_abl.fun
scoreboard players operation @s ca.dvg_abl.tail.rdc.y += #$move.y ca.dvg_abl.fun
scoreboard players operation @s ca.dvg_abl.tail.rdc.z += #$move.z ca.dvg_abl.fun

# =========================================================================================================================

function ca:dvg_abl/method/pivot/resonance

# =========================================================================================================================

function ca:gnr_lay/delete/int

# =========================================================================================================================
