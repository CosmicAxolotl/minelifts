
# update position
execute at @s anchored eyes positioned ^ ^ ^1.25 on vehicle on origin on vehicle run tp @s ~ ~ ~
execute at @s run playsound block.beacon.ambient player @s ~ ~ ~ 1 1.33

execute if entity @s[x_rotation=-45..45] run function classic:feature/delving/cube/horizontal_faces_update
execute if entity @s[x_rotation=45..-45] run function classic:feature/delving/cube/vertical_faces_update

title @s[tag=delving.inside] actionbar ["",[{"text":"","color":"yellow","bold":true},"[",{"keybind":"key.use"},"]: "],{"text":"Quick Dig. "},[{"text":"","color":"yellow","bold":true},"[",{"keybind":"key.sneak"},"]: "],{"text":"Dig."}]
title @s[tag=delving.peek] actionbar ["",{"text":"You are currently peeking. ","color":"yellow"},[{"text":"","color":"green","bold":true},"[",{"keybind":"key.sneak"},"]: "],{"text":"Emerge. "},[{"text":"","color":"red","bold":true},"[",{"keybind":"key.use"},"]: "],{"text":"Cancel."}]

# UPDATE FACES LOGIC

# guard-statement to skip if not update required
execute unless entity @s[tag=num.update] run return 0

tag @s add tmp

data modify storage ml:tmp cube_faces set value [['{"text":"","color":"#FFFFFF"}','{"score":{"name":"face.north","objective":"ml.fun"}}'],['{"text":"","color":"#FFFFFF"}','{"score":{"name":"face.south","objective":"ml.fun"}}'],['{"text":"","color":"#FFFFFF"}','{"score":{"name":"face.west","objective":"ml.fun"}}'],['{"text":"","color":"#FFFFFF"}','{"score":{"name":"face.east","objective":"ml.fun"}}'],['{"text":"","color":"#FFFFFF"}','{"score":{"name":"face.up","objective":"ml.fun"}}'],['{"text":"","color":"#FFFFFF"}','{"score":{"name":"face.down","objective":"ml.fun"}}']]

# get scores
function classic:feature/delving/cube/get_numbers

# update text display entities of the 6 cube faces
function classic:feature/delving/update_face/north
function classic:feature/delving/update_face/south
function classic:feature/delving/update_face/east
function classic:feature/delving/update_face/west
function classic:feature/delving/update_face/up
function classic:feature/delving/update_face/down

execute if entity @s[tag=horizontal] run function classic:feature/delving/cube/faces_update/horizontal
execute if entity @s[tag=vertical] run function classic:feature/delving/cube/faces_update/vertical

execute on vehicle on origin on vehicle on passengers if entity @s[type=text_display] run function classic:feature/delving/cube/update

tag @s remove num.update
tag @s remove tmp
