
scoreboard players set @s delving.cooldown 45

# remove DELVING_MARKER
execute on vehicle on origin on passengers on passengers on origin on vehicle run kill @s
execute on vehicle on origin on passengers on passengers on origin run kill @s

# remove DISPLAY_STACK
execute on vehicle on origin on passengers on passengers run kill @s
execute on vehicle on origin on passengers run kill @s
execute on vehicle on origin on vehicle on passengers run kill @s[type=!villager]
execute on vehicle on origin on vehicle run kill @s
execute on vehicle on origin run kill @s

# remove MOUNT_STACK
execute on vehicle on vehicle run kill @s
execute on vehicle on passengers on passengers run kill @s
execute on vehicle on passengers run kill @s[type=!player]
execute on vehicle run kill @s

execute store result score is_air ml.fun at @s anchored eyes positioned ^ ^ ^ align y if block ~ ~-0.0001 ~ #classic:feature/delving/air
execute if score is_air ml.fun matches 0 at @s anchored eyes positioned ^ ^ ^ align y run tp @s ~ ~ ~
execute if score is_air ml.fun matches 1 at @s anchored eyes run tp @s ^ ^ ^

# remove tags
tag @s remove delving.peek
tag @s remove ml.delving

tag @s remove tail

tag @s remove emerge.north
tag @s remove emerge.south
tag @s remove emerge.west
tag @s remove emerge.east
tag @s remove emerge.up
tag @s remove emerge.down
tag @s remove emerge.accept

title @s actionbar [{"text":"","color":"green"},"Emerged."]
stopsound @s player minecraft:block.beacon.power_select
playsound minecraft:block.dripstone_block.fall player @a ~ ~ ~ 2 0.57
playsound minecraft:entity.silverfish.ambient player @a ~ ~ ~ 4 1.34
playsound minecraft:block.composter.fill player @a ~ ~ ~ 3 0.64
playsound minecraft:entity.zombie.infect player @a ~ ~ ~ 0.5 1.19

effect clear @s invisibility
effect clear @s resistance
effect give @s resistance 1 5 true
