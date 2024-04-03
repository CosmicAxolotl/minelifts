
# =========================================================================================================================

scoreboard players set @s ca.dvg_abl.cooldown 15

execute if score #$steps ca.dvg_abl.fun matches 0.. run scoreboard players remove #$steps ca.dvg_abl.fun 1
execute if score #$steps ca.dvg_abl.fun matches ..-1 run scoreboard players add #$steps ca.dvg_abl.fun 1

function ca:dvg_abl/instance/method/move

# =========================================================================================================================
