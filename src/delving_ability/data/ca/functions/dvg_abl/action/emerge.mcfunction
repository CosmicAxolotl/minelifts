
# =========================================================================================================================

execute if entity @s[tag=dvg_abl.emerge,scores={ca.dvg_abl.cooldown=..7}] run function ca:dvg_abl/action/emerge/accept
execute if entity @s[tag=!dvg_abl.emerge,scores={ca.dvg_abl.cooldown=..7}] run function ca:dvg_abl/action/emerge/cancel

function ca:gnr_lay/delete/ext

# =========================================================================================================================
