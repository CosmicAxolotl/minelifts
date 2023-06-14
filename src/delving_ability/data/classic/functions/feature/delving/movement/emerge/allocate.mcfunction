
tp @s ~ ~ ~

execute store success score is_used ml.fun if entity @e[type=area_effect_cloud,distance=..32,tag=feature.delving,tag=mount,tag=!tmp,limit=1]

execute unless score is_used ml.fun matches 1 run function classic:feature/delving/movement/emerge/back_inside

execute if score is_used ml.fun matches 1 positioned ~ ~64 ~ run function classic:feature/delving/movement/emerge/allocate
