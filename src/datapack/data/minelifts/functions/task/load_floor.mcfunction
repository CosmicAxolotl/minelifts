
# make input operations:
execute store result score task.floor.size.x ml.ram run data get storage ml:tmp floor.size[0]
execute store result score task.floor.size.z ml.ram run data get storage ml:tmp floor.size[1]


# set sector signs:
execute if score task.alloc ml.ram matches 0 run scoreboard players set task.floor.sign_x ml.ram 0
execute if score task.alloc ml.ram matches 0 run scoreboard players set task.floor.sign_z ml.ram 0
execute if score task.alloc ml.ram matches 1 run scoreboard players set task.floor.sign_x ml.ram -1
execute if score task.alloc ml.ram matches 1 run scoreboard players set task.floor.sign_z ml.ram 0
execute if score task.alloc ml.ram matches 2 run scoreboard players set task.floor.sign_x ml.ram 0
execute if score task.alloc ml.ram matches 2 run scoreboard players set task.floor.sign_z ml.ram -1
execute if score task.alloc ml.ram matches 3 run scoreboard players set task.floor.sign_x ml.ram -1
execute if score task.alloc ml.ram matches 3 run scoreboard players set task.floor.sign_z ml.ram -1


# set x & y of size for the loading:
scoreboard players operation task.floor.sign_x ml.ram *= task.floor.size.x ml.ram
scoreboard players operation task.floor.sign_z ml.ram *= task.floor.size.z ml.ram

# check if there's no task already running
scoreboard players set task.if ml.ram 0

## task object tree -> floor.task branch -> ALL children objects -> compare task.alloc == this.slot, if true, save to task.if variable
execute if score task.alloc ml.ram matches 0 as 0000000F-0000-000F-0000-002000000000 on passengers if entity @s[tag=ml.core,tag=task.floor] on passengers store success score task.if ml.ram if score @s ml.rom matches 0
execute if score task.alloc ml.ram matches 1 as 0000000F-0000-000F-0000-002000000000 on passengers if entity @s[tag=ml.core,tag=task.floor] on passengers store success score task.if ml.ram if score @s ml.rom matches 1
execute if score task.alloc ml.ram matches 2 as 0000000F-0000-000F-0000-002000000000 on passengers if entity @s[tag=ml.core,tag=task.floor] on passengers store success score task.if ml.ram if score @s ml.rom matches 2 
execute if score task.alloc ml.ram matches 3 as 0000000F-0000-000F-0000-002000000000 on passengers if entity @s[tag=ml.core,tag=task.floor] on passengers store success score task.if ml.ram if score @s ml.rom matches 3 

# run task:
execute unless score task.if ml.ram matches 0 run tellraw @a[tag=innata_log] [{"text":"Cannot proceed, an equal task is still running!"}]
execute if score task.if ml.ram matches 0 summon marker run function minelifts:task/load_floor/init
