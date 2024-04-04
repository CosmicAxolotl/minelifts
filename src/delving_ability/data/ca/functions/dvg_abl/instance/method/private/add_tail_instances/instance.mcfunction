
# =========================================================================================================================

data merge entity @s {block_state:{Name:"minecraft:gray_stained_glass"},interpolation_duration:8,teleport_duration:1,transformation:{right_rotation:[0.0f,0.0f,0.0f,1.0f],left_rotation:[0.0f,0.0f,0.0f,1.0f],translation:[0.0f,0.0f,0.0f],scale:[0.0f,0.0f,0.0f]},glow_color_override:10331808}

scoreboard players set @s ca.dvg_abl.tail.member -1

scoreboard players operation @s ca.dvg_abl.tail.rdc.x = #$current_pos.x ca.dvg_abl.fun
scoreboard players operation @s ca.dvg_abl.tail.rdc.y = #$current_pos.y ca.dvg_abl.fun
scoreboard players operation @s ca.dvg_abl.tail.rdc.z = #$current_pos.z ca.dvg_abl.fun

# =========================================================================================================================

ride @s dismount
ride @s mount @e[distance=..1,tag=tmp,limit=1]

# =========================================================================================================================

execute on vehicle run tag @s remove tmp

return 1

# =========================================================================================================================
