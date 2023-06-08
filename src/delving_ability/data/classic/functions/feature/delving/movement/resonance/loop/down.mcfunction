
scoreboard players remove resonance.down ml.fun 1
execute unless block ~ ~ ~ #classic:feature/delving/travel_blocks run function classic:feature/delving/movement/resonance/loop/down_tail

# loop if QUICK_IF && !TAIL && !UNLOADED
execute unless entity @s[tag=tail] positioned ~ ~-1 ~ run function classic:feature/delving/movement/resonance/loop/down
