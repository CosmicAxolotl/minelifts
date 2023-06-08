
tp @s ~ ~ ~

execute store success score is_used ml.fun if entity @e[type=area_effect_cloud,distance=..32,tag=feature.delving,tag=mount,limit=1]
execute unless score is_used ml.fun matches 1 run function classic:feature/delving/summon

execute if score is_used ml.fun matches 1 positioned ~ ~64 ~ run function classic:feature/delving/allocate
