# { Tags : [ "ml.core" , "slot.0" , "chunk" ] }
execute if score task.alloc ml.ram matches 0 as @e[type=marker,tag=ml.core,tag=slot.0,tag=chunk] at @s run function minelifts:task/unload_floor/erase
execute if score task.alloc ml.ram matches 1 as @e[type=marker,tag=ml.core,tag=slot.1,tag=chunk] at @s run function minelifts:task/unload_floor/erase
execute if score task.alloc ml.ram matches 2 as @e[type=marker,tag=ml.core,tag=slot.2,tag=chunk] at @s run function minelifts:task/unload_floor/erase
execute if score task.alloc ml.ram matches 3 as @e[type=marker,tag=ml.core,tag=slot.3,tag=chunk] at @s run function minelifts:task/unload_floor/erase
