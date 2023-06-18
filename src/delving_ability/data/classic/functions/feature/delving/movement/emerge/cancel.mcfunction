execute on vehicle run tag @s add tmp
execute on vehicle on origin on passengers on passengers on origin on vehicle at @s as @a[tag=tmp,limit=1] on vehicle on vehicle positioned ~ 512 ~ run function classic:feature/delving/movement/emerge/allocate

title @s times 2 6 4
title @s subtitle {"text":"Canceled.","color":"red"}
title @s title ""

effect give @s blindness infinite 0 true

scoreboard players set @s delving.cooldown 3

stopsound @s ambient
stopsound @s block
stopsound @s hostile
stopsound @s neutral
stopsound @s player
stopsound @s record
stopsound @s voice
stopsound @s weather

playsound minecraft:block.dripstone_block.fall player @s ~ ~ ~ 99999999 0.57
playsound minecraft:entity.silverfish.ambient player @s ~ ~ ~ 99999999 0.66
playsound minecraft:block.composter.fill player @s ~ ~ ~ 99999999 0.64

tag @s add delving.inside

tag @s remove delving.peek
tag @s remove emerge.north
tag @s remove emerge.south
tag @s remove emerge.west
tag @s remove emerge.east
tag @s remove emerge.up
tag @s remove emerge.down
