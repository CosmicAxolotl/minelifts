
# =========================================================================================================================

execute if entity @s[tag=dvg_abl.peeking] run return run function ca:dvg_abl/instance/task/peeking

# =========================================================================================================================

execute store result storage ca:ram stack[-1].id int 1 run scoreboard players get @s ca.dvg_abl.fun

# =========================================================================================================================

execute store result storage ca:ram stack[-1].direction_changed.is byte 1 if function ca:dvg_abl/instance/has_changed run function ca:dvg_abl/instance/task/get_rotation

function ca:dvg_abl/get/reference_list
execute if data storage ca:ram stack[-1].direction_changed{is:1b} run function ca:dvg_abl/method/cage/update_selected_face with storage ca:ram stack[-1].reference_list
execute if score @s ca.dvg_abl.cooldown matches 0 run function ca:dvg_abl/method/cage/update_selected_face with storage ca:ram stack[-1].reference_list

# =========================================================================================================================

execute anchored eyes positioned ^ ^ ^1 run function ca:dvg_abl/instance/task/controls

# =========================================================================================================================
