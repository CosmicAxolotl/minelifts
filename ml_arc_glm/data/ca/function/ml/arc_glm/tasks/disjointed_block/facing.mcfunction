
scoreboard players set #4 ca.ml.arc_glm.fun 3
scoreboard players operation #$.time_existing ca.ml.arc_glm.fun = @s ca.ml.arc_glm.time_existing
scoreboard players operation #$.time_existing ca.ml.arc_glm.fun %= #4 ca.ml.arc_glm.fun

execute unless score #$.time_existing ca.ml.arc_glm.fun matches 0 run return 1

execute if data storage ca:ram stack[-1].test{idle:false} \
    positioned ^ ^ ^7 rotated as @s positioned ^ ^ ^14 facing entity @s feet \
        facing ^ ^ ^-1 positioned as @s run return run \
            tp @s ^ ^0.7 ^1.8 ~ ~

execute if data storage ca:ram stack[-1].test{clockwise:true} \
    positioned ^ ^ ^5 rotated as @s positioned ^ ^ ^30 facing entity @s feet \
        facing ^ ^ ^-1 positioned as @s run return run \
            tp @s ^0.27 ^-0.7 ^1.3 ~2 ~1.5

execute positioned ^ ^ ^5 rotated as @s positioned ^ ^ ^30 facing entity @s feet \
    facing ^ ^ ^-1 positioned as @s run return run \
        tp @s ^-0.27 ^0.7 ^1.3 ~-2 ~-1.5

