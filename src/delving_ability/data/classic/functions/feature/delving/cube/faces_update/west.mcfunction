
# IN_DISTANCE var
execute if score face.west ml.fun matches 2..16 run data modify storage ml:tmp cube_faces[2][0] set value '{"text":"","color":"#FFCF00"}'

# FAR symbol
execute if score face.west ml.fun matches 17.. run data modify storage ml:tmp cube_faces[2][0] set value '{"text":"","color":"#FFCF00"}'

# FAR
execute if score face.west ml.fun matches ..-2 run data modify storage ml:tmp cube_faces[2][0] set value '{"text":"","color":"#FFAF00"}'

# WALL symbol
execute if score face.west ml.fun matches -1 run data modify storage ml:tmp cube_faces[2][0] set value '{"text":"","color":"#F00000"}'

# EMERGE symbol 
execute if score face.west ml.fun matches 1 run data modify storage ml:tmp cube_faces[2][0] set value '{"text":"","color":"#AFFF00"}'
execute if score face.west ml.fun matches 1 run tag @s add can.emerge

# inverse to display correct number
execute if score face.west ml.fun matches -16..-2 run scoreboard players operation face.west ml.fun *= #-1 ml.fun
