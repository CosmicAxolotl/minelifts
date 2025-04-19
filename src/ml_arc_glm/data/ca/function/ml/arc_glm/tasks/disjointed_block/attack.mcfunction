


execute store result score #$.success_attack ca.ml.arc_glm.fun run damage @s 1 minecraft:arrow at ~ ~ ~

execute if score #$.success_attack ca.ml.arc_glm.fun matches ..0 run return 0

execute at @s run playsound minecraft:item.mace.smash_air player @a ~ ~ ~ 0.5 1.2

particle minecraft:damage_indicator ~ ~-0.3 ~ 0.5 0.5 0.5 0.1 4 normal @a
particle minecraft:crit ~ ~ ~ 0.5 0.5 0.5 0.3 10 normal @a
particle minecraft:explosion ~ ~ ~ 0 0 0 0 1 normal @a
