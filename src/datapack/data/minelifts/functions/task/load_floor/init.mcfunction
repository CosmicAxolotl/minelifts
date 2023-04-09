# get chunks_to_load count
scoreboard players operation task.chunks_to_load ml.ram = task.floor.size.x ml.ram
scoreboard players operation task.chunks_to_load ml.ram *= task.floor.size.z ml.ram


# run task
execute if score task.alloc ml.ram matches 0 run scoreboard players operation task.load_slot.0.chunks_to_load ml.rom = task.chunks_to_load ml.ram
execute if score task.alloc ml.ram matches 0 run schedule function minelifts:task/load_floor/0/task 1t

execute if score task.alloc ml.ram matches 1 run scoreboard players operation task.load_slot.1.chunks_to_load ml.rom = task.chunks_to_load ml.ram
execute if score task.alloc ml.ram matches 1 run schedule function minelifts:task/load_floor/1/task 1t

execute if score task.alloc ml.ram matches 2 run scoreboard players operation task.load_slot.2.chunks_to_load ml.rom = task.chunks_to_load ml.ram
execute if score task.alloc ml.ram matches 2 run schedule function minelifts:task/load_floor/2/task 1t

execute if score task.alloc ml.ram matches 3 run scoreboard players operation task.load_slot.3.chunks_to_load ml.rom = task.chunks_to_load ml.ram
execute if score task.alloc ml.ram matches 3 run schedule function minelifts:task/load_floor/3/task 1t

# set marker to start point
data merge storage ml:tmp { Pos : [ 0d , -64d , 0d ] }
execute store result storage ml:tmp Pos[0] double 16 run scoreboard players get task.floor.sign_x ml.ram
execute store result storage ml:tmp Pos[2] double 16 run scoreboard players get task.floor.sign_z ml.ram
data modify entity @s Pos set from storage ml:tmp Pos


## offset it for no collisions with 0, 0
execute if score task.alloc ml.ram matches 0 positioned as @s run tp @s ~524288 -64 ~524288
execute if score task.alloc ml.ram matches 1 positioned as @s run tp @s ~524288 -64 ~-524288
execute if score task.alloc ml.ram matches 2 positioned as @s run tp @s ~-524288 -64 ~524288
execute if score task.alloc ml.ram matches 3 positioned as @s run tp @s ~-524288 -64 ~-524288


# idk what to comment, just making separation :kekw:
scoreboard players set task.floor.x ml.ram 0
scoreboard players set task.floor.z ml.ram 1


# start loop
execute if score task.alloc ml.ram matches 0 positioned as @s run function minelifts:task/load_floor/0/loop/x
execute if score task.alloc ml.ram matches 1 positioned as @s run function minelifts:task/load_floor/1/loop/x
execute if score task.alloc ml.ram matches 2 positioned as @s run function minelifts:task/load_floor/2/loop/x
execute if score task.alloc ml.ram matches 3 positioned as @s run function minelifts:task/load_floor/3/loop/x
