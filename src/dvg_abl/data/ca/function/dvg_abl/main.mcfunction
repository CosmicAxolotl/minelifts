
# =========================================================================================================================

function ca:gnr_lay/new/ext

scoreboard players remove @a[scores={ca.dvg_abl.cooldown=0..}] ca.dvg_abl.cooldown 1

execute as @e[type=item_display,tag=dvg_abl.vehicle] unless function ca:dvg_abl/method/private/has_passenger run function ca:dvg_abl/action/remount
execute as @a[tag=dvg_abl] at @s run function ca:dvg_abl/instance/task

execute if entity @a[tag=dvg_abl,limit=1] run schedule function ca:dvg_abl/main 1t replace
execute if entity @a[scores={ca.dvg_abl.cooldown=0..},limit=1] run schedule function ca:dvg_abl/main 1t replace

function ca:gnr_lay/delete/ext


# =========================================================================================================================
