
execute on vehicle on origin on passengers run data modify storage ml:tmp axis set from entity @s[type=marker] data.axis

execute store result score face.north ml.fun run data get storage ml:tmp axis[0]
execute store result score face.south ml.fun run data get storage ml:tmp axis[1]
execute store result score face.west ml.fun run data get storage ml:tmp axis[2]
execute store result score face.east ml.fun run data get storage ml:tmp axis[3]
execute store result score face.up ml.fun run data get storage ml:tmp axis[4]
execute store result score face.down ml.fun run data get storage ml:tmp axis[5]
