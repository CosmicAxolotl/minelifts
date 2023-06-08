
# set colour for selected cube face
execute if entity @s[tag=facing.north] run function classic:feature/delving/cube/faces_update/south
execute if entity @s[tag=facing.south] run function classic:feature/delving/cube/faces_update/north
execute if entity @s[tag=facing.west] run function classic:feature/delving/cube/faces_update/east
execute if entity @s[tag=facing.east] run function classic:feature/delving/cube/faces_update/west

tag @s remove horizontal
