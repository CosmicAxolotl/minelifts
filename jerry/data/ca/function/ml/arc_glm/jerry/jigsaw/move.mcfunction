
rotate @s ~ ~

execute if score @s ca.ml.arc_glm.jerry.lifetime matches ..40 \
    positioned as @s run tp @s ^ ^ ^0.1

execute if score @s ca.ml.arc_glm.jerry.lifetime matches 41..80 \
    positioned as @s run tp @s ^ ^ ^0.2

execute if score @s ca.ml.arc_glm.jerry.lifetime matches 81..100 \
    positioned as @s run tp @s ^ ^ ^0.3

execute if score @s ca.ml.arc_glm.jerry.lifetime matches 101..140 \
    positioned as @s run tp @s ^ ^ ^0.4

execute if score @s ca.ml.arc_glm.jerry.lifetime matches 141..180 \
    positioned as @s run tp @s ^ ^ ^0.6

execute if score @s ca.ml.arc_glm.jerry.lifetime matches 181..200 \
    positioned as @s run tp @s ^ ^ ^0.7

execute if score @s ca.ml.arc_glm.jerry.lifetime matches 201..240 \
    positioned as @s run tp @s ^ ^ ^0.8

execute if score @s ca.ml.arc_glm.jerry.lifetime matches 241..280 \
    positioned as @s run tp @s ^ ^ ^1.2

execute if score @s ca.ml.arc_glm.jerry.lifetime matches 281.. \
    positioned as @s run tp @s ^ ^ ^1.5

execute unless predicate {                          \
        condition: "minecraft:random_chance",       \
        chance: 0.1                                \
    } run return 1

playsound minecraft:entity.warden.nearby_closest hostile @a ~ ~ ~ 2 2
playsound minecraft:entity.warden.nearby_closer hostile @a ~ ~ ~ 3 1
playsound minecraft:entity.warden.nearby_close hostile @a ~ ~ ~ 4 0.5


