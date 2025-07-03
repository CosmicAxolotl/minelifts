

execute store result storage ca:ram stack[-1].x float 0.01 run random value -45000..45000
execute store result storage ca:ram stack[-1].y float 0.01 run random value -17900..18000
execute store result storage ca:ram stack[-1].distance float 0.1 run random value 0..30

execute rotated 0 0 run function ca:ml/arc_glm/jerry/core/snapper_tp with storage ca:ram stack[-1]

