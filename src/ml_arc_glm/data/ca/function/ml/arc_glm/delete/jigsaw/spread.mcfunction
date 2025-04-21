
data modify storage ca:ram stack[-1].entity set value {view_range:1f,interpolation_duration:4, Rotation:[0.0d ,0.0d]}
execute store result storage ca:ram stack[-1].entity.Rotation[0] float 0.001 run random value -180000..179999
execute store result storage ca:ram stack[-1].entity.Rotation[1] float 0.001 run random value -20000..20000



tag @s remove snapped
ride @s dismount

data modify entity @s {} merge from storage ca:ram stack[-1].entity

return 1

