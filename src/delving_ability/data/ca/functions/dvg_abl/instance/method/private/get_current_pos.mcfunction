
# =========================================================================================================================

execute on passengers run tag @s add tmp.instance
tag @s add tmp

# =========================================================================================================================

scoreboard players operation #$current_pos.x ca.dvg_abl.fun = @e[distance=..1,tag=tmp.instance,scores={ca.dvg_abl.tail.member=0},limit=1] ca.dvg_abl.tail.rdc.x
scoreboard players operation #$current_pos.y ca.dvg_abl.fun = @e[distance=..1,tag=tmp.instance,scores={ca.dvg_abl.tail.member=0},limit=1] ca.dvg_abl.tail.rdc.y
scoreboard players operation #$current_pos.z ca.dvg_abl.fun = @e[distance=..1,tag=tmp.instance,scores={ca.dvg_abl.tail.member=0},limit=1] ca.dvg_abl.tail.rdc.z

# =========================================================================================================================
