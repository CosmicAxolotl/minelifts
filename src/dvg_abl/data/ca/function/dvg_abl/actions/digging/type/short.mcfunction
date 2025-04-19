
# =========================================================================================================================

scoreboard players set @s ca.dvg_abl.cooldown 5

title @s times 1t 3t 2t

execute \
    if data storage ca:ram protected_stack[-1][0].input[{forward:true}] run \
        title @s subtitle [{"text":"Forward Dig...","color":"gray"}]
execute \
    if data storage ca:ram protected_stack[-1][0].input[{backward:true}] run \
        title @s subtitle [{"text":"Backward Dig...","color":"gray"}]
execute \
    if data storage ca:ram protected_stack[-1][0].input[{right:true}] run \
        title @s subtitle [{"text":"Rightward Dig...","color":"gray"}]
execute \
    if data storage ca:ram protected_stack[-1][0].input[{left:true}] run \
        title @s subtitle [{"text":"Leftward Dig...","color":"gray"}]

title @s title [{"text":"➡","color":"yellow"}]

execute at @s anchored eyes run playsound minecraft:block.rooted_dirt.break player @s ^ ^ ^ 0.35 0.5
execute at @s anchored eyes run playsound minecraft:block.composter.fill player @s ^ ^ ^ 0.35 1.42

scoreboard players set #$steps ca.dvg_abl.fun 1

function ca:dvg_abl/instance/method/move

# =========================================================================================================================
