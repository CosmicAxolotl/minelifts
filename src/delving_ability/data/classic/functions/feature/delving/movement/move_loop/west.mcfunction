
tp @s ~-1 ~ ~

execute if score resonance.west ml.fun matches 1.. run scoreboard players remove resonance.west ml.fun 1
execute if score resonance.west ml.fun matches ..-1 run scoreboard players add resonance.west ml.fun 1

execute if score quick_dig ml.fun matches 1 unless score resonance.west ml.fun matches -1..1 at @s run function classic:feature/delving/movement/move_loop/west
