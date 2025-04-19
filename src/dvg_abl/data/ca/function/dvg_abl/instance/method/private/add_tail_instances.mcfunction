
# =========================================================================================================================

function ca:gnr_lay/new/int

# =========================================================================================================================

#declare score_holder #$move.x
#declare score_holder #$move.y
#declare score_holder #$move.z

# =========================================================================================================================

execute store \
    result score #$steps ca.dvg_abl.fun run \
        data get storage ca:ram stack[-1].move.steps


execute store result score #$move.x ca.dvg_abl.fun run \
    data get storage ca:ram protected_stack[-1][-2].step_vector[0]
execute store result score #$move.y ca.dvg_abl.fun run \
    data get storage ca:ram protected_stack[-1][-2].step_vector[1]
execute store result score #$move.z ca.dvg_abl.fun run \
    data get storage ca:ram protected_stack[-1][-2].step_vector[2]

execute store result score #$move.steps ca.dvg_abl.fun run \
    data get storage ca:ram protected_stack[-1][-1].move.steps


# =========================================================================================================================

$execute as $(tail) at @s if function ca:dvg_abl/instance/method/private/get_current_pos run function ca:dvg_abl/instance/method/private/add_tail_instances/loop

# =========================================================================================================================

function ca:gnr_lay/delete/int

# =========================================================================================================================
