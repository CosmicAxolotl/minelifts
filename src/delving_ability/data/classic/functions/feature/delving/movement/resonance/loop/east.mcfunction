
# check UNLOADED
execute unless loaded ~ ~ ~ run tag @s add unloaded.east
execute unless loaded ~ ~ ~ run return 0

scoreboard players remove resonance.east ml.fun 1
execute unless block ~ ~ ~ #classic:feature/delving/travel_blocks run function classic:feature/delving/movement/resonance/loop/east_tail

# loop if QUICK_IF && !TAIL && !UNLOADED
execute unless entity @s[tag=tail] positioned ~1 ~ ~ run function classic:feature/delving/movement/resonance/loop/east