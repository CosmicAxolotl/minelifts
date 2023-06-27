
execute on origin unless entity @s[tag=tmp] run return 0
execute unless entity @s[nbt={Item:{id:"minecraft:totem_of_undying",tag:{ml.classic:["animus","delving"]}}}] run return 0

execute on origin at @s run playsound minecraft:block.note_block.pling master @s ~ ~ ~ 0.15 2

execute store result score offhand ml.fun on origin if score @s animus.delving.slot matches -106
execute store result score sneaking ml.fun on origin if predicate ml:generic/sneaking

execute if score offhand ml.fun matches 1 on origin run function classic:feature/animus/delving/toggle_description
execute if score offhand ml.fun matches 0 on origin run function classic:feature/delving/start

kill @s
