
# =========================================================================================================================

function ca:gnr_lay/new/ext

# =========================================================================================================================

execute store result storage ca:ram stack[-1].id int 1 run scoreboard players get @s ca.dvg_abl.fun


execute as @a[predicate=ca:dvg_abl/private/fast_reference,limit=1] run tag @s add tmp
    ride @a[tag=tmp,limit=1] dismount
    ride @a[tag=tmp,limit=1] mount @s
tag @a remove tmp

execute on passengers if entity @s[tag=dvg_abl.peeking] run return run function ca:dvg_abl/action/emerge

execute on passengers if score @s ca.dvg_abl.cooldown matches 0.. run return run function ca:gnr_lay/delete/ext
    execute on passengers run function ca:dvg_abl/action/private/crouch
        execute if score #$steps ca.dvg_abl.fun matches -1 on passengers run function ca:dvg_abl/action/display/fail
        execute if score #$steps ca.dvg_abl.fun matches 1 on passengers run function ca:dvg_abl/action/display/emerge
        execute unless score #$steps ca.dvg_abl.fun matches -1..1 on passengers run function ca:dvg_abl/action/short_dig

# =========================================================================================================================

function ca:gnr_lay/delete/ext

# =========================================================================================================================
