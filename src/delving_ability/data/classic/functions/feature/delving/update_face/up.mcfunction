
execute if score face.up ml.fun matches 2..16 run return 0

execute if score face.up ml.fun matches 17.. run data modify storage ml:tmp cube_faces[4][1] set value '{"text":"+16"}'

execute if score face.up ml.fun matches ..-17 run data modify storage ml:tmp cube_faces[4][1] set value '{"text":"+16"}'

execute if score face.up ml.fun matches -1 run data modify storage ml:tmp cube_faces[4][1] set value '{"text":"\\u2716"}'

execute if score face.up ml.fun matches 1 run data modify storage ml:tmp cube_faces[4][1] set value '{"text":"\\u2191"}'
