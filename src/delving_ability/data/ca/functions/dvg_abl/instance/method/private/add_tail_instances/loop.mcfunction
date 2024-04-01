
# =========================================================================================================================

scoreboard players operation #$current_pos.x ca.dvg_abl.fun += #$move.x ca.dvg_abl.fun
scoreboard players operation #$current_pos.y ca.dvg_abl.fun += #$move.y ca.dvg_abl.fun
scoreboard players operation #$current_pos.z ca.dvg_abl.fun += #$move.z ca.dvg_abl.fun

scoreboard players remove #$move.steps ca.dvg_abl.fun 1

# =========================================================================================================================

execute unless function ca:dvg_abl/instance/method/private/add_tail_instances/collision summon block_display run function ca:dvg_abl/instance/method/private/add_tail_instances/instance

execute on passengers run scoreboard players add @s ca.dvg_abl.tail.member 1

# =========================================================================================================================

execute if score #$move.steps ca.dvg_abl.fun matches 1.. run return run function ca:dvg_abl/instance/method/private/add_tail_instances/loop

# =========================================================================================================================
