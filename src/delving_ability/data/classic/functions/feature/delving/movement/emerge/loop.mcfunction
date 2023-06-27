
scoreboard players remove @s delving.cooldown 1

tag @s[tag=emerge.north,y_rotation=90..-90] add emerge.accept
tag @s[tag=emerge.north,y_rotation=-90..90] remove emerge.accept 

tag @s[tag=emerge.south,y_rotation=-90..90] add emerge.accept 
tag @s[tag=emerge.south,y_rotation=90..-90] remove emerge.accept 

tag @s[tag=emerge.west,y_rotation=-30.5..-148.5] add emerge.accept 
tag @s[tag=emerge.west,y_rotation=-148.5..-30.5] remove emerge.accept 

tag @s[tag=emerge.east,y_rotation=148.5..30.5] add emerge.accept 
tag @s[tag=emerge.east,y_rotation=30.5..148.5] remove emerge.accept 

tag @s[tag=emerge.up,x_rotation=-90..60] add emerge.accept 
tag @s[tag=emerge.up,x_rotation=60..90] remove emerge.accept 

tag @s[tag=emerge.down,x_rotation=-25..90] add emerge.accept 
tag @s[tag=emerge.down,x_rotation=-90..-25] remove emerge.accept 

tag @s add tmp
execute unless score @s delving.cooldown matches 5..17 unless score @s delving.cooldown matches 1..3 on vehicle on origin on passengers on passengers on origin on vehicle at @s align xyz positioned ~0.5 ~0.5 ~0.5 as @a[tag=tmp,limit=1] run function classic:feature/delving/movement/emerge/marker
tag @s add tmp

title @s[scores={delving.cooldown=..0}] times 5 2 5
title @s[tag=emerge.accept,scores={delving.cooldown=..0}] subtitle [{"text":"To accept","color":"gray"}]
title @s[tag=!emerge.accept,scores={delving.cooldown=..0}] subtitle [{"text":"To cancel","color":"gray"}]
title @s[tag=emerge.accept,scores={delving.cooldown=..0}] title [{"text":"","color":"green"},"[",{"keybind":"key.sneak"},"]"]
title @s[tag=!emerge.accept,scores={delving.cooldown=..0}] title [{"text":"","color":"red"},"[",{"keybind":"key.sneak"},"]"]

execute at @s[scores={delving.cooldown=..0}] anchored eyes run particle ash ~ ~ ~ 4 4 4 0.4 100 normal @s

execute at @s run playsound minecraft:block.note_block.chime player @s[scores={delving.cooldown=..0}] ~ ~ ~ 0.1 1.66
execute at @s run playsound minecraft:block.note_block.chime player @s[scores={delving.cooldown=..4}] ~ ~ ~ 0.1 1

playsound block.beacon.ambient player @s ~ ~ ~ 0.25 1.33

scoreboard players set @s[scores={delving.cooldown=..0}] delving.cooldown 17

title @s actionbar ["",{"text":"You are currently peeking.","color":"yellow"}]
