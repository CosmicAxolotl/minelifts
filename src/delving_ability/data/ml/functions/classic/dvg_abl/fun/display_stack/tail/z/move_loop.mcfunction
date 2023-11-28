# ========================================================================================================================

execute on passengers if score @s ml.classic.dlv_abl.tail.member matches 0 run \
    function ml:classic/dvg_abl/fun/display_stack/tail/z/move/member_1

scoreboard players operation #.$tmp.rdc.x ml.classic.dlv_abl.fun += #.$move.x ml.classic.dlv_abl.fun
scoreboard players operation #.$tmp.rdc.y ml.classic.dlv_abl.fun += #.$move.y ml.classic.dlv_abl.fun
scoreboard players operation #.$tmp.rdc.z ml.classic.dlv_abl.fun += #.$move.z ml.classic.dlv_abl.fun

# ========================================================================================================================

scoreboard players reset #.$tmp.tail.collision ml.classic.dlv_abl.fun

execute on passengers \
    if score @s ml.classic.dlv_abl.tail.rdc.x = #.$tmp.rdc.x ml.classic.dlv_abl.fun \
    if score @s ml.classic.dlv_abl.tail.rdc.y = #.$tmp.rdc.y ml.classic.dlv_abl.fun \
    if score @s ml.classic.dlv_abl.tail.rdc.z = #.$tmp.rdc.z ml.classic.dlv_abl.fun run \
        scoreboard players operation #.$tmp.tail.collision ml.classic.dlv_abl.fun = @s ml.classic.dlv_abl.tail.member

# ========================================================================================================================

execute if score #.$tmp.tail.collision ml.classic.dlv_abl.fun = #.$tmp.tail.collision ml.classic.dlv_abl.fun run \
    function ml:classic/dvg_abl/fun/display_stack/tail/z/move/member_2

execute unless score #.$tmp.tail.collision ml.classic.dlv_abl.fun = #.$tmp.tail.collision ml.classic.dlv_abl.fun run \
    function ml:classic/dvg_abl/fun/display_stack/tail/z/move/member_3

# ========================================================================================================================

execute on passengers run \
    scoreboard players add @s ml.classic.dlv_abl.tail.member 1

scoreboard players remove #.$move.steps ml.classic.dlv_abl.fun 1

execute if score #.$move.steps ml.classic.dlv_abl.fun matches ..0 run function ml:classic/dvg_abl/fun/display_stack/tail/z/move
execute if score #.$move.steps ml.classic.dlv_abl.fun matches 1.. run function ml:classic/dvg_abl/fun/display_stack/tail/z/move_loop

# ========================================================================================================================
