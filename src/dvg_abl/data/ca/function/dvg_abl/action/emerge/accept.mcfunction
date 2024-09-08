
# =========================================================================================================================

title @s times 2 4 6
title @s subtitle [{"text":"","color":"green"},"Accepted."]
title @s title ""
title @s actionbar ""

scoreboard players set @s ca.dvg_abl.cooldown 45


stopsound @s player minecraft:block.beacon.power_select
playsound minecraft:block.dripstone_block.fall player @a ~ ~ ~ 2 0.57
playsound minecraft:entity.silverfish.ambient player @a ~ ~ ~ 4 1.34
playsound minecraft:block.composter.fill player @a ~ ~ ~ 3 0.64
playsound minecraft:entity.zombie.infect player @a ~ ~ ~ 0.5 1.19


function ca:dvg_abl/instance/destructor

gamemode adventure

execute at @s anchored eyes positioned ^ ^ ^ align xyz run tp @s ~0.5 ~ ~0.5

# =========================================================================================================================
