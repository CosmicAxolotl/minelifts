
execute store success score description ml.fun if entity @s[tag=animus.delving.no_description]
execute if score description ml.fun matches 1 run tag @s remove animus.delving.no_description
execute if score description ml.fun matches 0 run tag @s add animus.delving.no_description

execute store success score lvl ml.fun if entity @s[tag=animus.delving.upgraded]

execute store success score slot.occupied ml.fun if data entity @s Inventory[{Slot:-106b}]
execute if score slot.occupied ml.fun matches 0 run loot replace entity @s weapon.offhand loot classic:feature/delving/animus
execute if score slot.occupied ml.fun matches 1 run loot give @s loot classic:feature/delving/animus

execute store success score failed_return ml.fun run clear @s minecraft:totem_of_undying{ml.classic:["delving"]} 0
execute if score failed_return ml.fun matches 0 run loot give @s loot classic:feature/delving/animus
