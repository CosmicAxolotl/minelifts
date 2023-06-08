
# set colour for selected cube face
execute if entity @s[tag=facing.up] run function classic:feature/delving/cube/faces_update/down 
execute if entity @s[tag=facing.down] run function classic:feature/delving/cube/faces_update/up 

tag @s remove vertical
