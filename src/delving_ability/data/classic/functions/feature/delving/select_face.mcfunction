
# update position
execute at @s anchored eyes positioned ^ ^ ^1.25 on vehicle on origin on vehicle run tp @s ~ ~ ~
execute at @s run playsound block.beacon.ambient player @s ~ ~ ~ 1 1.33

execute if entity @s[x_rotation=-45..45] run function classic:feature/delving/cube/horizontal_faces_update
execute if entity @s[x_rotation=45..-45] run function classic:feature/delving/cube/vertical_faces_update

title @s[tag=!can.emerge] actionbar ["",[{"text":"","color":"yellow","bold":true},"[",{"keybind":"key.use"},"]: "],{"text":"Quick Dig. "},[{"text":"","color":"yellow","bold":true},"[",{"keybind":"key.sneak"},"]: "],{"text":"Dig."}]
title @s[tag=can.emerge] actionbar ["",[{"text":"","color":"yellow","bold":true},"[",{"keybind":"key.use"},"]: "],{"text":"Emerge. "}]

# UPDATE FACES LOGIC
## guard-statement to skip if not update required
execute if entity @s[tag=!num.update] run return 0

tag @s add tmp

tag @s remove can.emerge

data modify storage ml:tmp cube_faces set value [['{"text":"","color":"#FFFFFF"}','{"score":{"name":"face.north","objective":"ml.fun"}}'],['{"text":"","color":"#FFFFFF"}','{"score":{"name":"face.south","objective":"ml.fun"}}'],['{"text":"","color":"#FFFFFF"}','{"score":{"name":"face.west","objective":"ml.fun"}}'],['{"text":"","color":"#FFFFFF"}','{"score":{"name":"face.east","objective":"ml.fun"}}'],['{"text":"","color":"#FFFFFF"}','{"score":{"name":"face.up","objective":"ml.fun"}}'],['{"text":"","color":"#FFFFFF"}','{"score":{"name":"face.down","objective":"ml.fun"}}']]

## get scores
function classic:feature/delving/cube/get_numbers

## update text display entities of the 6 cube faces
function classic:feature/delving/update_face/north
function classic:feature/delving/update_face/south
function classic:feature/delving/update_face/east
function classic:feature/delving/update_face/west
function classic:feature/delving/update_face/up
function classic:feature/delving/update_face/down

execute if entity @s[tag=horizontal] run function classic:feature/delving/cube/faces_update/horizontal
execute if entity @s[tag=vertical] run function classic:feature/delving/cube/faces_update/vertical

execute if score face.north ml.fun matches 0.. run scoreboard players remove face.north ml.fun 1
execute if score face.north ml.fun matches ..0 run scoreboard players add face.north ml.fun 1

execute if score face.south ml.fun matches 0.. run scoreboard players remove face.south ml.fun 1
execute if score face.south ml.fun matches ..0 run scoreboard players add face.south ml.fun 1

execute if score face.west ml.fun matches 0.. run scoreboard players remove face.west ml.fun 1
execute if score face.west ml.fun matches ..0 run scoreboard players add face.west ml.fun 1

execute if score face.east ml.fun matches 0.. run scoreboard players remove face.east ml.fun 1
execute if score face.east ml.fun matches ..0 run scoreboard players add face.east ml.fun 1

execute if score face.up ml.fun matches 0.. run scoreboard players remove face.up ml.fun 1
execute if score face.up ml.fun matches ..0 run scoreboard players add face.up ml.fun 1

execute if score face.down ml.fun matches 0.. run scoreboard players remove face.down ml.fun 1
execute if score face.down ml.fun matches ..0 run scoreboard players add face.down ml.fun 1

execute on vehicle on origin on vehicle on passengers if entity @s[type=text_display] run function classic:feature/delving/cube/update

tag @s remove num.update
tag @s remove tmp
