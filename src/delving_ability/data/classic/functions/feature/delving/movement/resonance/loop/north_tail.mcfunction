
execute if block ~ ~ ~ #classic:feature/delving/air unless block ~ ~ ~ light[waterlogged=true] run scoreboard players operation resonance.north ml.fun *= #-1 ml.fun
execute unless loaded ~ ~ ~ run tag @s add unloaded.north
tag @s add tail
