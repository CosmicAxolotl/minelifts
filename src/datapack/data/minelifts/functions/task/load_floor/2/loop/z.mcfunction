summon marker ~ ~ ~ { Tags : [ "ml.core" , "slot.2" , "chunk" ] }
forceload add ~ ~ ~ ~
fill ~ ~ ~ ~15 ~ ~15 minecraft:orange_concrete
scoreboard players add task.floor.z ml.ram 1
execute if score task.floor.z ml.ram < task.floor.size.z ml.ram positioned ~ ~ ~16 run function minelifts:task/load_floor/2/loop/z