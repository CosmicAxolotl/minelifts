
execute as @a[tag=dvg_abl.quick_jump_boost,scores={ca.dvg_abl.cooldown=17}] at @s run function ca:dvg_abl/action/emerge/accept
tag @a[scores={ca.dvg_abl.cooldown=17}] remove dvg_abl.quick_jump_boost
