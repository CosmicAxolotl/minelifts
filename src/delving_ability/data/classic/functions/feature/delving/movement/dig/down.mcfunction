
# set cooldown
scoreboard players set @s delving.cooldown 7

# guard-statement
execute if score face.up ml.fun matches -1 run function classic:feature/delving/movement/dig/wall
execute if score face.up ml.fun matches -1 run return 0

execute if score face.up ml.fun matches 1 run function classic:feature/delving/movement/emerge

# start sound event
playsound minecraft:block.beacon.power_select player @s ~ ~ ~ 1 1.8
playsound minecraft:entity.silverfish.step player @s ~ ~ ~ 1 0.82
playsound minecraft:block.composter.fill player @s ~ ~ ~ 1 1.42

execute if entity @s[tag=movement.quick] run function classic:feature/delving/movement/dig/quick

execute anchored eyes positioned ^ ^ ^1.25 run function classic:feature/delving/movement/dig/down_animation

tag @s add move
