
execute on origin unless entity @s[tag=tmp] run return 0
execute unless entity @s[nbt={Item:{id:"minecraft:totem_of_undying",tag:{ml.classic:["animus","delving"]}}}] run return 0


execute on origin at @s run playsound minecraft:block.note_block.pling master @s ~ ~ ~ 0.15 2
data modify storage ml:tmp item set from entity @s Item.tag

execute store result score sneaking ml.fun on origin if predicate ml:generic/sneaking
execute store result score description.deployed ml.fun unless data storage ml:tmp item{ml.classic:["no.description"]}
execute store result score animus.lvl ml.fun if data storage ml:tmp item{ml.classic:["lvl.0"]}

execute if score sneaking ml.fun matches 1 on origin run function classic:feature/animus/delving/toggle_description
execute if score sneaking ml.fun matches 0 on origin run function classic:feature/animus/delving/trigger_start

kill @s
