
# =========================================================================================================================

scoreboard players set @s ca.dvg_abl.cooldown 14

title @s times 1t 4t 4t
title @s subtitle [{"text":"Quick dig...","color":"gray"}]
title @s title [{"text":"➠","color":"yellow"}]

execute at @s anchored eyes run playsound minecraft:entity.silverfish.step player @s ^ ^ ^ 0.35 0.82
execute at @s anchored eyes run playsound minecraft:block.composter.fill player @s ^ ^ ^ 0.35 1.42
execute at @s anchored eyes run playsound minecraft:block.bubble_column.upwards_inside player @s ^ ^ ^ 0.55 1.53

execute if score #$steps ca.dvg_abl.fun matches 0.. run scoreboard players remove #$steps ca.dvg_abl.fun 1
execute if score #$steps ca.dvg_abl.fun matches ..-1 run scoreboard players add #$steps ca.dvg_abl.fun 1

function ca:dvg_abl/instance/method/move

# =========================================================================================================================
