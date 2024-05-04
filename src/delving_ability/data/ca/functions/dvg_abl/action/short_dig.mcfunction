
# =========================================================================================================================

scoreboard players set @s ca.dvg_abl.cooldown 7

title @s times 1t 3t 2t
title @s subtitle [{"text":"Short dig...","color":"gray"}]
title @s title [{"text":"➡","color":"yellow"}]

execute at @s anchored eyes run playsound minecraft:entity.silverfish.step player @s ^ ^ ^ 0.35 0.82
execute at @s anchored eyes run playsound minecraft:block.composter.fill player @s ^ ^ ^ 0.35 1.42

scoreboard players set #$steps ca.dvg_abl.fun 1
function ca:dvg_abl/instance/method/move

# =========================================================================================================================
