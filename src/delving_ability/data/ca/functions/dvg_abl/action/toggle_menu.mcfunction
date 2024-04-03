
# =========================================================================================================================

advancement revoke @s only ca:dvg_abl/action/attack
execute if entity @s[tag=!dvg_abl] run return fail

# =========================================================================================================================

function ca:gnr_lay/new/ext

execute store success storage ca:ram stack[-1].toggle byte 1 if entity @s[tag=dvg_abl.main.tail]
execute if data storage ca:ram stack[{toggle:1b}] run tag @s remove dvg_abl.main.tail
execute if data storage ca:ram stack[{toggle:0b}] run tag @s add dvg_abl.main.tail

execute if data storage ca:ram stack[{toggle:1b}] anchored eyes run playsound minecraft:entity.villager.work_mason master @s ^ ^ ^ 0.2 1.3
execute if data storage ca:ram stack[{toggle:1b}] anchored eyes run stopsound @s master minecraft:entity.villager.work_librarian

execute if data storage ca:ram stack[{toggle:0b}] anchored eyes run playsound minecraft:entity.villager.work_librarian master @s ^ ^ ^ 1 1.3
execute if data storage ca:ram stack[{toggle:0b}] anchored eyes run stopsound @s master minecraft:entity.villager.work_mason

function ca:gnr_lay/delete/ext

# =========================================================================================================================
