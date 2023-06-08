
tag @s remove unloaded.north
tag @s remove unloaded.south
tag @s remove unloaded.west
tag @s remove unloaded.east

tag @s remove tail

scoreboard players set resonance.north ml.fun 1
function classic:feature/delving/movement/resonance/loop/north

tag @s remove tail

scoreboard players set resonance.south ml.fun 1
function classic:feature/delving/movement/resonance/loop/south

tag @s remove tail

scoreboard players set resonance.west ml.fun 1
function classic:feature/delving/movement/resonance/loop/west

tag @s remove tail

scoreboard players set resonance.east ml.fun 1
function classic:feature/delving/movement/resonance/loop/east

tag @s remove tail

scoreboard players set resonance.up ml.fun 1
function classic:feature/delving/movement/resonance/loop/up

tag @s remove tail

scoreboard players set resonance.down ml.fun 1
function classic:feature/delving/movement/resonance/loop/down

# make NBT packet
data merge storage ml:tmp {cube_faces:[I;0,0,0,0,0,0]}
execute store result storage ml:tmp axis[0] int 1 run scoreboard players get resonance.south ml.fun
execute store result storage ml:tmp axis[1] int 1 run scoreboard players get resonance.north ml.fun
execute store result storage ml:tmp axis[2] int 1 run scoreboard players get resonance.east ml.fun
execute store result storage ml:tmp axis[3] int 1 run scoreboard players get resonance.west ml.fun
execute store result storage ml:tmp axis[4] int 1 run scoreboard players get resonance.down ml.fun
execute store result storage ml:tmp axis[5] int 1 run scoreboard players get resonance.up ml.fun

# send NBT packet to DISPLAY_STACK ROM using pointer PLAYER => DISPLAY_STACK
execute on vehicle on origin on passengers run data modify entity @s[type=marker] data.axis set from storage ml:tmp axis
