
# ========================================================================================================================

#declare objective ml.classic.dlv_abl.fun

# ========================================================================================================================

scoreboard players set #.$move.x ml.classic.dlv_abl.fun 0
scoreboard players set #.$move.y ml.classic.dlv_abl.fun 0
scoreboard players set #.$move.z ml.classic.dlv_abl.fun 0

$data modify storage ca: move set value "$(move)"
$scoreboard players set #.$move.steps ml.classic.dlv_abl.fun $(steps)

# ========================================================================================================================

execute if data storage ca: {move:"south"} run scoreboard players set #.$move.z ml.classic.dlv_abl.fun 1
execute if data storage ca: {move:"north"} run scoreboard players set #.$move.z ml.classic.dlv_abl.fun -1
execute if data storage ca: {move:"east"} run scoreboard players set #.$move.x ml.classic.dlv_abl.fun 1
execute if data storage ca: {move:"west"} run scoreboard players set #.$move.x ml.classic.dlv_abl.fun -1
execute if data storage ca: {move:"down"} run scoreboard players set #.$move.y ml.classic.dlv_abl.fun -1
execute if data storage ca: {move:"up"} run scoreboard players set #.$move.y ml.classic.dlv_abl.fun 1

# ========================================================================================================================

#declare score_holder #.$move.x
#declare score_holder #.$move.y
#declare score_holder #.$move.z
#declare score_holder #.$move.steps

# ========================================================================================================================

execute at @s run function ml:classic/dvg_abl/fun/display_stack/tail/z/move_loop

# ========================================================================================================================
