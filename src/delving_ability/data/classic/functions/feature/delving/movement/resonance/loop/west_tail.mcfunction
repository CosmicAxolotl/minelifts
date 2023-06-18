
execute if block ~ ~ ~ #classic:feature/delving/air unless block ~ ~ ~ light[waterlogged=true] run scoreboard players operation resonance.west ml.fun *= #-1 ml.fun
execute unless loaded ~ ~ ~ run tag @s add unloaded.west
tag @s add tail
