
# =========================================================================================================================

execute on passengers if score @s ca.dvg_abl.tail.rdc.x = #$current_pos.x ca.dvg_abl.fun if score @s ca.dvg_abl.tail.rdc.y = #$current_pos.y ca.dvg_abl.fun if score @s ca.dvg_abl.tail.rdc.z = #$current_pos.z ca.dvg_abl.fun run return run function ca:dvg_abl/instance/method/private/add_tail_instances/found_collision

# =========================================================================================================================

tag @s add tmp

return fail

# =========================================================================================================================
