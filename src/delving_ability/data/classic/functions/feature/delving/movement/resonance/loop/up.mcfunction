
scoreboard players remove resonance.up ml.fun 1
execute unless block ~ ~ ~ #classic:feature/delving/travel_blocks run function classic:feature/delving/movement/resonance/loop/up_tail

# loop if !TAIL
execute unless entity @s[tag=tail] positioned ~ ~1 ~ run function classic:feature/delving/movement/resonance/loop/up
