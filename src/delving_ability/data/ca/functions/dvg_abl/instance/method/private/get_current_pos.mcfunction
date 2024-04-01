
# =========================================================================================================================

execute on passengers run tag @s add tmp.instance

# =========================================================================================================================

#declare score_holder #$current_pos.x
#declare score_holder #$current_pos.y
#declare score_holder #$current_pos.z

# =========================================================================================================================

scoreboard players operation #$current_pos.x ca.dvg_abl.fun = @e[distance=..1,tag=tmp.instance,scores={ca.dvg_abl.tail.member=0},limit=1] ca.dvg_abl.tail.rdc.x
scoreboard players operation #$current_pos.y ca.dvg_abl.fun = @e[distance=..1,tag=tmp.instance,scores={ca.dvg_abl.tail.member=0},limit=1] ca.dvg_abl.tail.rdc.y
scoreboard players operation #$current_pos.z ca.dvg_abl.fun = @e[distance=..1,tag=tmp.instance,scores={ca.dvg_abl.tail.member=0},limit=1] ca.dvg_abl.tail.rdc.z

# =========================================================================================================================

execute on passengers run tag @s remove tmp.instance

return 1

# =========================================================================================================================
