
# =========================================================================================================================

tag @s remove dvg_abl.emerge
execute at @s positioned ^ ^ ^1 on vehicle rotated as @s on passengers positioned ^ ^ ^-1 if entity @s[distance=..1.85] run tag @s add dvg_abl.emerge

title @s[scores={ca.dvg_abl.cooldown=5}] times 3 20 0
title @s[tag=dvg_abl.emerge,scores={ca.dvg_abl.cooldown=0..4}] actionbar [{"text":"","color":"green","bold":true,"underlined":true},"[",{"keybind":"key.sneak"},"]", {"text":" To emerge","color":"gray","bold":false,"underlined":false}]
title @s[tag=!dvg_abl.emerge,scores={ca.dvg_abl.cooldown=0..4}] actionbar [{"text":"","color":"red","bold":true,"underlined":true},"[",{"keybind":"key.sneak"},"]", {"text":" To cancel","color":"gray","bold":false,"underlined":false}]
title @s[tag=dvg_abl.emerge,scores={ca.dvg_abl.cooldown=5}] actionbar [{"text":"","color":"green","bold":true},"[",{"keybind":"key.sneak"},"]", {"text":" To emerge","color":"gray","bold":false}]
title @s[tag=!dvg_abl.emerge,scores={ca.dvg_abl.cooldown=5}] actionbar [{"text":"","color":"red","bold":true},"[",{"keybind":"key.sneak"},"]", {"text":" To cancel","color":"gray","bold":false}]

execute at @s[scores={ca.dvg_abl.cooldown=5}] run playsound minecraft:block.note_block.iron_xylophone player @s ~ ~ ~ 0.05 2

execute at @s[scores={ca.dvg_abl.cooldown=-1}] run playsound minecraft:block.note_block.iron_xylophone player @s ~ ~ ~ 0.05 1

scoreboard players set @s[scores={ca.dvg_abl.cooldown=-1}] ca.dvg_abl.cooldown 6

# =========================================================================================================================
