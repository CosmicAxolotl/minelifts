
# =========================================================================================================================

execute if entity @s[x_rotation=45..90,tag=!dvg_abl.facing.down] run return 1
execute if entity @s[x_rotation=-90..-45,tag=!dvg_abl.facing.up] run return 1

execute if entity @s[x_rotation=45..-45] run return fail

execute if entity @s[y_rotation=-45..45,tag=!dvg_abl.facing.south] run return 1
execute if entity @s[y_rotation=135..-135,tag=!dvg_abl.facing.north] run return 1
execute if entity @s[y_rotation=45..135,tag=!dvg_abl.facing.west] run return 1
execute if entity @s[y_rotation=-135..-45,tag=!dvg_abl.facing.east] run return 1

return fail

# =========================================================================================================================
