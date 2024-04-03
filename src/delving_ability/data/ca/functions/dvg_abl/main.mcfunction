
# =========================================================================================================================

function ca:gnr_lay/new/ext

scoreboard players remove @a[tag=dvg_abl,scores={ca.dvg_abl.cooldown=0..}] ca.dvg_abl.cooldown 1

execute as @e[type=item_display,tag=dvg_abl.vehicle] unless function ca:dvg_abl/method/private/has_passenger run function ca:dvg_abl/action/crouch
execute as @a[tag=dvg_abl] at @s run function ca:dvg_abl/instance/task

function ca:gnr_lay/delete/ext

# =========================================================================================================================
