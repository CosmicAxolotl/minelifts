
# =========================================================================================================================

function ca:gnr_lay/new/ext

# =========================================================================================================================

execute store result storage ca:ram stack[-1].id int 1 run scoreboard players get @s ca.dvg_abl.fun
execute as @a[predicate=ca:dvg_abl/private/fast_reference,limit=1] run tag @s add tmp

ride @a[tag=tmp,limit=1] dismount
ride @a[tag=tmp,limit=1] mount @s

tag @a remove tmp

execute on passengers if score @s ca.dvg_abl.cooldown matches 0.. run return run function ca:gnr_lay/delete/ext

# =========================================================================================================================

execute on passengers run scoreboard players set @s ca.dvg_abl.cooldown 12

execute on passengers store result storage ca:ram stack[-1].direction.south int 1 run scoreboard players get @s ca.dvg_abl.resonance.south
execute on passengers store result storage ca:ram stack[-1].direction.north int 1 run scoreboard players get @s ca.dvg_abl.resonance.north
execute on passengers store result storage ca:ram stack[-1].direction.west int 1 run scoreboard players get @s ca.dvg_abl.resonance.west
execute on passengers store result storage ca:ram stack[-1].direction.east int 1 run scoreboard players get @s ca.dvg_abl.resonance.east
execute on passengers store result storage ca:ram stack[-1].direction.down int 1 run scoreboard players get @s ca.dvg_abl.resonance.down
execute on passengers store result storage ca:ram stack[-1].direction.up int 1 run scoreboard players get @s ca.dvg_abl.resonance.up

execute on passengers run function ca:dvg_abl/get/reference_list
execute on passengers run function ca:dvg_abl/method/cage/update_selected_face with storage ca:ram stack[-1].reference_list

execute on passengers if entity @s[tag=dvg_abl.facing.south] store result score #$steps ca.dvg_abl.fun run data get storage ca:ram stack[-1].direction.south
execute on passengers if entity @s[tag=dvg_abl.facing.north] store result score #$steps ca.dvg_abl.fun run data get storage ca:ram stack[-1].direction.north
execute on passengers if entity @s[tag=dvg_abl.facing.west] store result score #$steps ca.dvg_abl.fun run data get storage ca:ram stack[-1].direction.west
execute on passengers if entity @s[tag=dvg_abl.facing.east] store result score #$steps ca.dvg_abl.fun run data get storage ca:ram stack[-1].direction.east
execute on passengers if entity @s[tag=dvg_abl.facing.down] store result score #$steps ca.dvg_abl.fun run data get storage ca:ram stack[-1].direction.down
execute on passengers if entity @s[tag=dvg_abl.facing.up] store result score #$steps ca.dvg_abl.fun run data get storage ca:ram stack[-1].direction.up

execute if score #$steps ca.dvg_abl.fun matches -1 on passengers run function ca:dvg_abl/action/display/fail
execute if score #$steps ca.dvg_abl.fun matches 1 on passengers run function ca:dvg_abl/action/display/emerge
execute unless score #$steps ca.dvg_abl.fun matches -1..1 on passengers run function ca:dvg_abl/action/short_dig

# =========================================================================================================================

function ca:gnr_lay/delete/ext

# =========================================================================================================================
