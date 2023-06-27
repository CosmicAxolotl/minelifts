
clear @s

execute store success score description ml.fun unless entity @s[tag=animus.delving.no_description]
execute store success score lvl ml.fun if entity @s[tag=animus.delving.upgraded]
execute if entity @s[tag=delving.inside] run scoreboard players set status ml.fun 0
execute if entity @s[tag=delving.peek] run scoreboard players set status ml.fun 1

loot replace entity @s container.0 loot classic:feature/delving/inventory_lock
