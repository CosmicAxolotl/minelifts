summon marker ~ ~ ~ { Tags : [ "ml.core" , "slot.0" , "chunk" ] }
forceload add ~ ~ ~ ~
scoreboard players add task.floor.z ml.ram 1
execute if score task.floor.z ml.ram < task.floor.size.z ml.ram positioned ~ ~ ~16 run function minelifts:task/load_floor/0/loop/z