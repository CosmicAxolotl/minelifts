
# =========================================================================================================================

title @s times 2 6 4
title @s subtitle {"text":"Canceled.","color":"red"}
title @s title ""
title @s actionbar [{"text":"On cooldown...","color":"white"}]


scoreboard players set @s ca.dvg_abl.cooldown 12

playsound minecraft:block.dripstone_block.fall player @s ~ ~ ~ 99999999 0.57 1
playsound minecraft:entity.silverfish.ambient player @s ~ ~ ~ 99999999 0.66 1
playsound minecraft:block.composter.fill player @s ~ ~ ~ 99999999 0.64 1

function ca:dvg_abl/get/reference_list
    function ca:dvg_abl/instance/method/cancel_emerge with storage ca:ram stack[-1].reference_list

# =========================================================================================================================
