
execute if score face.north ml.fun matches 2..16 run return 0

execute if score face.north ml.fun matches 17.. run data modify storage ml:tmp cube_faces[0][1] set value '{"text":"+16"}'

execute if score face.north ml.fun matches ..-17 run data modify storage ml:tmp cube_faces[0][1] set value '{"text":"+16"}'

execute if score face.north ml.fun matches -1 run data modify storage ml:tmp cube_faces[0][1] set value '{"text":"\\u2716"}'

execute if score face.north ml.fun matches 1 run data modify storage ml:tmp cube_faces[0][1] set value '{"text":"\\u2191"}'
