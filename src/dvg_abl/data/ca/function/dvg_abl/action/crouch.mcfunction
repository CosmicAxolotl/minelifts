
# =========================================================================================================================

function ca:gnr_lay/new/ext

# =========================================================================================================================

execute on passengers if entity @s[tag=dvg_abl.peeking] run return run function ca:dvg_abl/action/emerge

execute on passengers if score @s ca.dvg_abl.cooldown matches 0.. run return run function ca:gnr_lay/delete/ext
    execute on passengers run function ca:dvg_abl/action/private/crouch
        execute if score #$steps ca.dvg_abl.fun matches -1 on passengers run function ca:dvg_abl/action/display/fail
        execute if score #$steps ca.dvg_abl.fun matches 1 on passengers run function ca:dvg_abl/action/display/emerge
        execute unless score #$steps ca.dvg_abl.fun matches -1..1 on passengers run function ca:dvg_abl/action/short_dig

# =========================================================================================================================

function ca:gnr_lay/delete/ext

# =========================================================================================================================
