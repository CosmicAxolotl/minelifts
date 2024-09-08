
# =========================================================================================================================

tag @s remove dvg_abl.facing.south
tag @s remove dvg_abl.facing.north
tag @s remove dvg_abl.facing.west
tag @s remove dvg_abl.facing.east
tag @s remove dvg_abl.facing.down
tag @s remove dvg_abl.facing.up

# =========================================================================================================================

execute if entity @s[x_rotation=45..90] run return run tag @s add dvg_abl.facing.down
execute if entity @s[x_rotation=-90..-45] run return run tag @s add dvg_abl.facing.up

execute if entity @s[y_rotation=-45..45] run return run tag @s add dvg_abl.facing.south
execute if entity @s[y_rotation=135..-135] run return run tag @s add dvg_abl.facing.north
execute if entity @s[y_rotation=45..135] run return run tag @s add dvg_abl.facing.west
execute if entity @s[y_rotation=-135..-45] run return run tag @s add dvg_abl.facing.east

# =========================================================================================================================
