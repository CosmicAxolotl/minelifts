
data modify storage ca:ram stack[-1].vector set value [{value:[I;0,0,0]}]
data modify \
    storage ca:ram stack[-1].vector[0].value set from \
    storage ca:ram stack[0].step_vector


execute \
    if data storage ca:ram stack[-1].vector[{value:[I;0,0,1]}] \
    on vehicle at @s run \
        tp @s ~ ~-0.95 ~0.85 0 0

execute \
    if data storage ca:ram stack[-1].vector[{value:[I;0,0,-1]}] \
    on vehicle at @s run \
        tp @s ~ ~-0.95 ~-0.85 180 0

execute \
    if data storage ca:ram stack[-1].vector[{value:[I;1,0,0]}] \
    on vehicle at @s run \
        tp @s ~0.8 ~-0.95 ~ -90 0

execute \
    if data storage ca:ram stack[-1].vector[{value:[I;-1,0,0]}] \
    on vehicle at @s run \
        tp @s ~-0.8 ~-0.95 ~ 90 0

execute \
    if data storage ca:ram stack[-1].vector[{value:[I;0,-1,0]}] \
    on vehicle at @s run \
        tp @s ~ ~-1.75 ~ 0 90

execute \
    if data storage ca:ram stack[-1].vector[{value:[I;0,1,0]}] \
    on vehicle at @s run \
        tp @s ~ ~-0.25 ~ 0 -90

tp @s ~ ~ ~ ~ ~
$ride @s mount $(vehicle)
