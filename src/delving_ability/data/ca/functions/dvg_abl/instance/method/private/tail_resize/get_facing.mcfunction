
# =========================================================================================================================

execute if entity @s[tag=dvg_abl.facing.south] run data modify storage ca:ram stack[-2].facing.direction set value "south"
execute if entity @s[tag=dvg_abl.facing.north] run data modify storage ca:ram stack[-2].facing.direction set value "north"
execute if entity @s[tag=dvg_abl.facing.west] run data modify storage ca:ram stack[-2].facing.direction set value "west"
execute if entity @s[tag=dvg_abl.facing.east] run data modify storage ca:ram stack[-2].facing.direction set value "east"
execute if entity @s[tag=dvg_abl.facing.down] run data modify storage ca:ram stack[-2].facing.direction set value "down"
execute if entity @s[tag=dvg_abl.facing.up] run data modify storage ca:ram stack[-2].facing.direction set value "up"

# =========================================================================================================================
