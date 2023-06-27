
tag @s remove ml.delving

scoreboard players set @s delving.cooldown 45

data modify storage ml:tmp inventory set value {general:[],last_bit:[]}

execute on vehicle on origin on passengers run data modify storage ml:tmp inventory.general set from entity @s data.inventory

data modify storage ml:tmp inventory.last_bit append from storage ml:tmp inventory.general[{Slot:-106b}]
data modify storage ml:tmp inventory.last_bit append from storage ml:tmp inventory.general[{Slot:27b}]
data modify storage ml:tmp inventory.last_bit append from storage ml:tmp inventory.general[{Slot:28b}]
data modify storage ml:tmp inventory.last_bit append from storage ml:tmp inventory.general[{Slot:29b}]
data modify storage ml:tmp inventory.last_bit append from storage ml:tmp inventory.general[{Slot:30b}]
data modify storage ml:tmp inventory.last_bit append from storage ml:tmp inventory.general[{Slot:31b}]
data modify storage ml:tmp inventory.last_bit append from storage ml:tmp inventory.general[{Slot:32b}]
data modify storage ml:tmp inventory.last_bit append from storage ml:tmp inventory.general[{Slot:33b}]
data modify storage ml:tmp inventory.last_bit append from storage ml:tmp inventory.general[{Slot:34b}]
data modify storage ml:tmp inventory.last_bit append from storage ml:tmp inventory.general[{Slot:35b}]

data modify storage ml:tmp inventory.last_bit append from storage ml:tmp inventory.general[{Slot:103b}]
data modify storage ml:tmp inventory.last_bit append from storage ml:tmp inventory.general[{Slot:102b}]
data modify storage ml:tmp inventory.last_bit append from storage ml:tmp inventory.general[{Slot:101b}]
data modify storage ml:tmp inventory.last_bit append from storage ml:tmp inventory.general[{Slot:100b}]

data modify storage ml:tmp inventory.last_bit[{Slot:-106b}].Slot set value 0b
data modify storage ml:tmp inventory.last_bit[{Slot:27b}].Slot set value 1b
data modify storage ml:tmp inventory.last_bit[{Slot:28b}].Slot set value 2b
data modify storage ml:tmp inventory.last_bit[{Slot:29b}].Slot set value 3b
data modify storage ml:tmp inventory.last_bit[{Slot:30b}].Slot set value 4b
data modify storage ml:tmp inventory.last_bit[{Slot:31b}].Slot set value 5b
data modify storage ml:tmp inventory.last_bit[{Slot:32b}].Slot set value 6b
data modify storage ml:tmp inventory.last_bit[{Slot:33b}].Slot set value 7b
data modify storage ml:tmp inventory.last_bit[{Slot:34b}].Slot set value 8b
data modify storage ml:tmp inventory.last_bit[{Slot:35b}].Slot set value 9b

data modify storage ml:tmp inventory.last_bit[{Slot:100b}].Slot set value 10b
data modify storage ml:tmp inventory.last_bit[{Slot:101b}].Slot set value 11b
data modify storage ml:tmp inventory.last_bit[{Slot:102b}].Slot set value 12b
data modify storage ml:tmp inventory.last_bit[{Slot:103b}].Slot set value 13b

data modify block 0 -64 0 Items set from storage ml:tmp inventory.general

item replace entity @s container.0 from block 0 -64 0 container.0
item replace entity @s container.1 from block 0 -64 0 container.1
item replace entity @s container.2 from block 0 -64 0 container.2
item replace entity @s container.3 from block 0 -64 0 container.3
item replace entity @s container.4 from block 0 -64 0 container.4
item replace entity @s container.5 from block 0 -64 0 container.5
item replace entity @s container.6 from block 0 -64 0 container.6
item replace entity @s container.7 from block 0 -64 0 container.7
item replace entity @s container.8 from block 0 -64 0 container.8
item replace entity @s container.9 from block 0 -64 0 container.9
item replace entity @s container.10 from block 0 -64 0 container.10
item replace entity @s container.11 from block 0 -64 0 container.11
item replace entity @s container.12 from block 0 -64 0 container.12
item replace entity @s container.13 from block 0 -64 0 container.13
item replace entity @s container.14 from block 0 -64 0 container.14
item replace entity @s container.15 from block 0 -64 0 container.15
item replace entity @s container.16 from block 0 -64 0 container.16
item replace entity @s container.17 from block 0 -64 0 container.17
item replace entity @s container.18 from block 0 -64 0 container.18
item replace entity @s container.19 from block 0 -64 0 container.19
item replace entity @s container.20 from block 0 -64 0 container.20
item replace entity @s container.21 from block 0 -64 0 container.21
item replace entity @s container.22 from block 0 -64 0 container.22
item replace entity @s container.23 from block 0 -64 0 container.23
item replace entity @s container.24 from block 0 -64 0 container.24
item replace entity @s container.25 from block 0 -64 0 container.25
item replace entity @s container.26 from block 0 -64 0 container.26

data modify block 0 -64 0 Items set from storage ml:tmp inventory.last_bit

item replace entity @s weapon.offhand from block 0 -64 0 container.0
item replace entity @s container.27 from block 0 -64 0 container.1
item replace entity @s container.28 from block 0 -64 0 container.2
item replace entity @s container.29 from block 0 -64 0 container.3
item replace entity @s container.30 from block 0 -64 0 container.4
item replace entity @s container.31 from block 0 -64 0 container.5
item replace entity @s container.32 from block 0 -64 0 container.6
item replace entity @s container.33 from block 0 -64 0 container.7
item replace entity @s container.34 from block 0 -64 0 container.8
item replace entity @s container.35 from block 0 -64 0 container.9

item replace entity @s armor.feet from block 0 -64 0 container.10
item replace entity @s armor.legs from block 0 -64 0 container.11
item replace entity @s armor.chest from block 0 -64 0 container.12
item replace entity @s armor.head from block 0 -64 0 container.13

function classic:feature/animus/delving/inventory/root

scoreboard players set jump.lvl ml.fun -1

execute at @s[tag=emerge.up] anchored eyes positioned ^ ^ ^ run function classic:feature/delving/movement/emerge/jump

execute if score jump.lvl ml.fun matches 4.. run tag @s add emerge.particles
scoreboard players set @s animus.delving.jump 0

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

execute at @s anchored eyes positioned ^ ^ ^ align y run tp @s ~ ~ ~

# remove tags
tag @s remove delving.peek

tag @s remove tail

tag @s remove emerge.north
tag @s remove emerge.south
tag @s remove emerge.west
tag @s remove emerge.east
tag @s remove emerge.up
tag @s remove emerge.down
tag @s remove emerge.accept

title @s times 2 4 6
title @s title ""
title @s subtitle [{"text":"","color":"green"},"Accepted."]
title @s actionbar ""

stopsound @s player minecraft:block.beacon.power_select
playsound minecraft:block.dripstone_block.fall player @a ~ ~ ~ 2 0.57
playsound minecraft:entity.silverfish.ambient player @a ~ ~ ~ 4 1.34
playsound minecraft:block.composter.fill player @a ~ ~ ~ 3 0.64
playsound minecraft:entity.zombie.infect player @a ~ ~ ~ 0.5 1.19

effect clear @s invisibility
effect clear @s resistance
effect give @s resistance 1 5 true
effect give @s weakness 1 127 true
effect give @s speed 1 1 true
