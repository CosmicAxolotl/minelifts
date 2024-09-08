
# =========================================================================================================================

execute if entity @s[tag=!dvg_abl] run return fail

execute if score @s ca.dvg_abl.cooldown matches 0.. at @s anchored eyes run return run playsound minecraft:ui.button.click master @s ^ ^ ^ 0.1 0.5

# =========================================================================================================================

function ca:gnr_lay/new/ext

# =========================================================================================================================

scoreboard players set @s ca.dvg_abl.cooldown 12

execute store result storage ca:ram stack[-1].direction.south int 1 run scoreboard players get @s ca.dvg_abl.resonance.south
execute store result storage ca:ram stack[-1].direction.north int 1 run scoreboard players get @s ca.dvg_abl.resonance.north
execute store result storage ca:ram stack[-1].direction.west int 1 run scoreboard players get @s ca.dvg_abl.resonance.west
execute store result storage ca:ram stack[-1].direction.east int 1 run scoreboard players get @s ca.dvg_abl.resonance.east
execute store result storage ca:ram stack[-1].direction.down int 1 run scoreboard players get @s ca.dvg_abl.resonance.down
execute store result storage ca:ram stack[-1].direction.up int 1 run scoreboard players get @s ca.dvg_abl.resonance.up

function ca:dvg_abl/get/reference_list
    function ca:dvg_abl/method/cage/update_selected_face with storage ca:ram stack[-1].reference_list

execute if entity @s[tag=dvg_abl.facing.south] store result score #$steps ca.dvg_abl.fun run data get storage ca:ram stack[-1].direction.south
execute if entity @s[tag=dvg_abl.facing.north] store result score #$steps ca.dvg_abl.fun run data get storage ca:ram stack[-1].direction.north
execute if entity @s[tag=dvg_abl.facing.west] store result score #$steps ca.dvg_abl.fun run data get storage ca:ram stack[-1].direction.west
execute if entity @s[tag=dvg_abl.facing.east] store result score #$steps ca.dvg_abl.fun run data get storage ca:ram stack[-1].direction.east
execute if entity @s[tag=dvg_abl.facing.down] store result score #$steps ca.dvg_abl.fun run data get storage ca:ram stack[-1].direction.down
execute if entity @s[tag=dvg_abl.facing.up] store result score #$steps ca.dvg_abl.fun run data get storage ca:ram stack[-1].direction.up

execute if entity @s[tag=dvg_abl.peeking] run return run function ca:dvg_abl/action/emerge
    execute if score #$steps ca.dvg_abl.fun matches -1 run function ca:dvg_abl/action/display/fail
    execute if score #$steps ca.dvg_abl.fun matches 1 run function ca:dvg_abl/action/display/emerge
    execute unless score #$steps ca.dvg_abl.fun matches -1..1 run function ca:dvg_abl/action/quick_dig

# =========================================================================================================================

function ca:gnr_lay/delete/ext

# =========================================================================================================================
