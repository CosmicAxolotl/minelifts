
# =========================================================================================================================

scoreboard players set @s ca.dvg_abl.cooldown 9

title @s times 1t 3t 2t

execute \
    if data storage ca:ram protected_stack[-1][0].input[{forward:true}] run \
        title @s subtitle [{"text":"Quick Forward Dig...","color":"gray"}]
execute \
    if data storage ca:ram protected_stack[-1][0].input[{backward:true}] run \
        title @s subtitle [{"text":"Quick Backward Dig...","color":"gray"}]
execute \
    if data storage ca:ram protected_stack[-1][0].input[{right:true}] run \
        title @s subtitle [{"text":"Quick Rightward Dig...","color":"gray"}]
execute \
    if data storage ca:ram protected_stack[-1][0].input[{left:true}] run \
        title @s subtitle [{"text":"Quick Leftward Dig...","color":"gray"}]
        
title @s title [{"text":"➡","color":"yellow"}]

execute at @s anchored eyes run playsound minecraft:block.rooted_dirt.break player @s ^ ^ ^ 0.35 0.5
execute at @s anchored eyes run playsound minecraft:block.composter.fill player @s ^ ^ ^ 0.35 1.42

execute if score #$steps ca.dvg_abl.fun matches 0.. run scoreboard players remove #$steps ca.dvg_abl.fun 1
execute if score #$steps ca.dvg_abl.fun matches ..-1 run scoreboard players add #$steps ca.dvg_abl.fun 1

function ca:dvg_abl/instance/method/move

# =========================================================================================================================
