
execute if data storage ca:ram stack[-1].test{idle:false} \
    positioned ^ ^ ^7 rotated as @s positioned ^ ^ ^20 facing entity @s feet \
        facing ^ ^ ^-1 positioned as @s run return run \
            tp @s ^ ^0.015 ^0.5 ~ ~

execute if data storage ca:ram stack[-1].test{clockwise:true} \
    positioned ^ ^ ^5 rotated as @s positioned ^ ^ ^100 facing entity @s feet \
        facing ^ ^ ^-1 positioned as @s run return run \
            tp @s ^0.06 ^-0.015 ^0.5 ~2 ~1.5

execute positioned ^ ^ ^5 rotated as @s positioned ^ ^ ^100 facing entity @s feet \
    facing ^ ^ ^-1 positioned as @s run return run \
        tp @s ^-0.06 ^0.015 ^0.5 ~-2 ~-1.5

