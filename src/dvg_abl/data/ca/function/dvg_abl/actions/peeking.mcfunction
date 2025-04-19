
function ca:dvg_abl/instance/task/peeking

execute if score @s ca.dvg_abl.cooldown matches 9.. run return fail

execute if data storage ca:ram stack[0].input[{"forward":true}] run return run function ca:dvg_abl/action/emerge/accept
execute if data storage ca:ram stack[0].input[{"backward":true}] run function ca:dvg_abl/action/emerge/cancel

