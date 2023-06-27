
# guard-statements
execute unless entity @s[advancements={classic:feature/animus/trigger={delving=true}}] run return 0
execute unless data storage ml:tmp inventory[{id:"minecraft:totem_of_undying",tag:{ml.classic:["delving"]}}] run return 0

execute store result score @s animus.delving.slot run data get storage ml:tmp inventory[{id:"minecraft:totem_of_undying",tag:{ml.classic:["delving"]}}].Slot
