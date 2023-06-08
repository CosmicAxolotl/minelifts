
tp @s ~ ~ ~1

execute if score resonance.south ml.fun matches 1.. run scoreboard players remove resonance.south ml.fun 1
execute if score resonance.south ml.fun matches ..-1 run scoreboard players add resonance.south ml.fun 1

execute if score quick_dig ml.fun matches 1 unless score resonance.south ml.fun matches -1..1 at @s run function classic:feature/delving/movement/move_loop/south
