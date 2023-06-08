
# set cooldown
scoreboard players set @s delving.cooldown 7

tag @s add hit_wall

playsound minecraft:entity.villager.no player @s ~ ~ ~ 1 1.3

title @s times 0t 15t 5t
title @s subtitle {"text":"Cannot travel further","color":"#FFF000"}
title @s title {"text":"\u2716","color":"#F00000"}
