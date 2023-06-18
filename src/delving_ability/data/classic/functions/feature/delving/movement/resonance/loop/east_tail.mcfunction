
execute if block ~ ~ ~ #classic:feature/delving/air unless block ~ ~ ~ light[waterlogged=true] run scoreboard players operation resonance.east ml.fun *= #-1 ml.fun
execute unless loaded ~ ~ ~ run tag @s add unloaded.east
tag @s add tail
