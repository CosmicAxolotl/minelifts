
title @s actionbar [{"text":"You cannot use Delving right now!","color":"#FF0000"}]
playsound minecraft:entity.villager.no player @s ~ ~ ~ 1 1.3
scoreboard players set @s delving.cooldown 7
