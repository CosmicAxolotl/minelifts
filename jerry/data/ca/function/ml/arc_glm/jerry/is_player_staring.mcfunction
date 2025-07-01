
execute \
    facing entity @s eyes \
    positioned as @s \
    positioned ^ ^ ^1 \
    rotated as @s \
    positioned ^ ^ ^1 \
    if entity @s[distance=..0.2] run return 1
