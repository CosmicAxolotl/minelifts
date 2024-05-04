
# =========================================================================================================================

title @s actionbar [{"text":"You are peeking.","color":"gray"}]

tag @s remove dvg_abl.emerge
execute at @s positioned ^ ^ ^1 on vehicle rotated as @s on passengers positioned ^ ^ ^-1 if entity @s[distance=..1.85] run tag @s add dvg_abl.emerge

title @s[scores={ca.dvg_abl.cooldown=5}] times 5 2 5
title @s[tag=dvg_abl.emerge,scores={ca.dvg_abl.cooldown=5}] subtitle [{"text":"To emerge","color":"gray"}]
title @s[tag=!dvg_abl.emerge,scores={ca.dvg_abl.cooldown=5}] subtitle [{"text":"To cancel","color":"gray"}]
title @s[tag=dvg_abl.emerge,scores={ca.dvg_abl.cooldown=5}] title [{"text":"","color":"green"},"[",{"keybind":"key.sneak"},"]"]
title @s[tag=!dvg_abl.emerge,scores={ca.dvg_abl.cooldown=5}] title [{"text":"","color":"red"},"[",{"keybind":"key.sneak"},"]"]

execute at @s[scores={ca.dvg_abl.cooldown=5}] run playsound minecraft:block.note_block.chime player @s ~ ~ ~ 0.5 0.6

execute at @s[scores={ca.dvg_abl.cooldown=-1}] run playsound minecraft:block.note_block.chime player @s ~ ~ ~ 0.5 1

scoreboard players set @s[scores={ca.dvg_abl.cooldown=-1}] ca.dvg_abl.cooldown 6

# =========================================================================================================================
