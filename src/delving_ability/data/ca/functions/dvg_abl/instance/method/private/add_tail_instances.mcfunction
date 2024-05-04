
# =========================================================================================================================

function ca:gnr_lay/new/int

# =========================================================================================================================

#declare score_holder #$move.x
#declare score_holder #$move.y
#declare score_holder #$move.z

# =========================================================================================================================

scoreboard players set #$move.x ca.dvg_abl.fun 0
scoreboard players set #$move.y ca.dvg_abl.fun 0
scoreboard players set #$move.z ca.dvg_abl.fun 0

    execute if data storage ca:ram protected_stack[-1][-1].move{direction:"south"} run scoreboard players set #$move.z ca.dvg_abl.fun 1
    execute if data storage ca:ram protected_stack[-1][-1].move{direction:"north"} run scoreboard players set #$move.z ca.dvg_abl.fun -1
    execute if data storage ca:ram protected_stack[-1][-1].move{direction:"east"} run scoreboard players set #$move.x ca.dvg_abl.fun 1
    execute if data storage ca:ram protected_stack[-1][-1].move{direction:"west"} run scoreboard players set #$move.x ca.dvg_abl.fun -1
    execute if data storage ca:ram protected_stack[-1][-1].move{direction:"down"} run scoreboard players set #$move.y ca.dvg_abl.fun -1
    execute if data storage ca:ram protected_stack[-1][-1].move{direction:"up"} run scoreboard players set #$move.y ca.dvg_abl.fun 1

execute store result score #$move.steps ca.dvg_abl.fun run data get storage ca:ram protected_stack[-1][-1].move.steps

# =========================================================================================================================

$execute as $(tail) at @s if function ca:dvg_abl/instance/method/private/get_current_pos run function ca:dvg_abl/instance/method/private/add_tail_instances/loop

# =========================================================================================================================

function ca:gnr_lay/delete/int

# =========================================================================================================================
