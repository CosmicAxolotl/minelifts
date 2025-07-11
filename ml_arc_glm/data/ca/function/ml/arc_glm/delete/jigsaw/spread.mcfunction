
data modify storage ca:ram stack[-1].entity set value {view_range:1f,interpolation_duration: 16, Rotation:[0.0d ,0.0d]}
execute store result storage ca:ram stack[-1].entity.Rotation[0] float 0.001 run random value -180000..179999
execute store result storage ca:ram stack[-1].entity.Rotation[1] float 0.001 run random value -20000..20000

execute on vehicle on origin run tag @s add tmp

ride @e[type=slime,tag=tmp,limit=1] mount @s
execute on passengers run tag @s remove tmp

tag @s remove snapped
ride @s dismount

execute on passengers run data modify entity @s[type=block_display] {} merge from storage ca:ram stack[-1].entity
data modify entity @s {} merge from storage ca:ram stack[-1].entity

return 1

