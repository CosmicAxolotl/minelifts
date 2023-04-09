summon marker ~ ~ ~ { Tags : [ "ml.core" , "slot.2" , "chunk" ] }
forceload add ~ ~ ~ ~
fill ~ ~ ~ ~15 ~ ~15 minecraft:white_concrete
scoreboard players add task.floor.x ml.ram 1
scoreboard players set task.floor.z ml.ram 1
execute if score task.floor.z ml.ram < task.floor.size.z ml.ram positioned ~ ~ ~16 run function minelifts:task/load_floor/2/loop/z
execute if score task.floor.x ml.ram < task.floor.size.x ml.ram run tp @s ~16 ~ ~
execute if score task.floor.x ml.ram < task.floor.size.x ml.ram positioned as @s run function minelifts:task/load_floor/2/loop/x