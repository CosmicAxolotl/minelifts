
# ========================================================================================================================

execute if entity @s[x_rotation=-90..-45] run data modify storage ca: tmp.move set value "up"
execute if entity @s[x_rotation=-45..90] run data modify storage ca: tmp.move set value "down"

# ========================================================================================================================

execute if entity @s[x_rotation=45..-45] run return 0

# ========================================================================================================================

execute if entity @s[y_rotation=135..-135] run data modify storage ca: tmp.move set value "north"
execute if entity @s[y_rotation=-45..45] run data modify storage ca: tmp.move set value "south"
execute if entity @s[y_rotation=45..135] run data modify storage ca: tmp.move set value "west"
execute if entity @s[y_rotation=-135..-45] run data modify storage ca: tmp.move set value "east"

# ========================================================================================================================
