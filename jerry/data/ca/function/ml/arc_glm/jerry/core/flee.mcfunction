
function ca:gnr_lay/new/int

execute store result storage ca:ram stack[-1].x float 0.01 run random value -4500..-1000
execute store result storage ca:ram stack[-1].y float 0.01 run random value -17900..18000
execute store result storage ca:ram stack[-1].distance int 1 run random value 8..24

execute at @s run particle minecraft:poof ~ ~0.5 ~ 0.2 0.7 0.2 0.1 120 force @a
execute at @s run playsound minecraft:entity.breeze.jump hostile @a ~ ~ ~ 2 0.7

execute rotated 0 0 run function ca:ml/arc_glm/jerry/core/flee_tp with storage ca:ram stack[-1]

execute at @s run particle minecraft:poof ~ ~0.5 ~ 0.2 0.7 0.2 0.1 120 force @a
execute at @s run playsound minecraft:entity.breeze.jump hostile @a ~ ~ ~ 2 0.9

function ca:gnr_lay/delete/int
