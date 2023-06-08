
tp @s ~ ~-1 ~

execute if score resonance.down ml.fun matches 1.. run scoreboard players remove resonance.down ml.fun 1
execute if score resonance.down ml.fun matches ..-1 run scoreboard players add resonance.down ml.fun 1

execute if score quick_dig ml.fun matches 1 unless score resonance.down ml.fun matches -1..1 at @s run function classic:feature/delving/movement/move_loop/down
