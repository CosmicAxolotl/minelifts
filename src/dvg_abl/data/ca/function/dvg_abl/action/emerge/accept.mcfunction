
# =========================================================================================================================

title @s times 2 4 6

title @s[tag=dvg_abl.quick_jump_boost] subtitle [{"text":"","color":"yellow"},"Quick Delving Emerge."]
title @s[tag=!dvg_abl.quick_jump_boost] subtitle [{"text":"","color":"green"},"Accepted."]
title @s title ""
title @s actionbar ""

scoreboard players set @s ca.dvg_abl.cooldown 12


stopsound @s player minecraft:block.beacon.power_select
playsound minecraft:block.dripstone_block.fall player @a ~ ~ ~ 2 0.57
playsound minecraft:entity.silverfish.ambient player @a ~ ~ ~ 4 1.34
playsound minecraft:block.composter.fill player @a ~ ~ ~ 3 0.64
playsound minecraft:entity.zombie.infect player @a ~ ~ ~ 0.5 1.19

execute on vehicle \
    if function ca:dvg_abl/action/emerge/jump_able \
    on passengers \
        at @s anchored eyes \
        positioned ^ ^ ^ align xyz \
        positioned ~0.5 ~-0.25 ~0.5 run \
        function ca:dvg_abl/action/emerge/give_jump

function ca:dvg_abl/instance/destructor

gamemode adventure

execute at @s anchored eyes positioned ^ ^ ^ align xyz run tp @s ~0.5 ~-0.5 ~0.5
execute at @s align xyz positioned ~0.5 ~-1 ~0.5 unless block ~ ~-1 ~ #ca:dvg_abl/air run tp @s ~ ~0.5 ~
execute at @s align xyz positioned ~0.5 ~-1 ~0.5 if block ~ ~-1 ~ #minecraft:slabs[type=bottom] run tp @s ~ ~0.25 ~

# =========================================================================================================================
