
# inverse to display correct number
execute if score face.north ml.fun matches -16..-2 run scoreboard players operation face.north ml.fun *= #-1 ml.fun
execute if score face.south ml.fun matches -16..-2 run scoreboard players operation face.south ml.fun *= #-1 ml.fun
execute if score face.west ml.fun matches -16..-2 run scoreboard players operation face.west ml.fun *= #-1 ml.fun
execute if score face.east ml.fun matches -16..-2 run scoreboard players operation face.east ml.fun *= #-1 ml.fun
execute if score face.up ml.fun matches -16..-2 run scoreboard players operation face.up ml.fun *= #-1 ml.fun
execute if score face.down ml.fun matches -16..-2 run scoreboard players operation face.down ml.fun *= #-1 ml.fun

data modify entity @s[tag=num.north] text set value '{"nbt":"cube_faces[0][]","interpret":"true","storage":"ml:tmp","separator":""}'
data modify entity @s[tag=num.south] text set value '{"nbt":"cube_faces[1][]","interpret":"true","storage":"ml:tmp","separator":""}'
data modify entity @s[tag=num.west] text set value '{"nbt":"cube_faces[2][]","interpret":"true","storage":"ml:tmp","separator":""}'
data modify entity @s[tag=num.east] text set value '{"nbt":"cube_faces[3][]","interpret":"true","storage":"ml:tmp","separator":""}'
data modify entity @s[tag=num.up] text set value '{"nbt":"cube_faces[4][]","interpret":"true","storage":"ml:tmp","separator":""}'
data modify entity @s[tag=num.down] text set value '{"nbt":"cube_faces[5][]","interpret":"true","storage":"ml:tmp","separator":""}'
