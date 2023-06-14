
execute if score face.south ml.fun matches 2..17 run return 0

execute if score face.south ml.fun matches 18.. run data modify storage ml:tmp cube_faces[1][1] set value '{"text":"+16"}'

execute if score face.south ml.fun matches ..-18 run data modify storage ml:tmp cube_faces[1][1] set value '{"text":"+16"}'

execute if score face.south ml.fun matches -1 run data modify storage ml:tmp cube_faces[1][1] set value '{"text":"\\u2716"}'

execute if score face.south ml.fun matches 1 run data modify storage ml:tmp cube_faces[1][1] set value '{"text":"\\u2191"}'
