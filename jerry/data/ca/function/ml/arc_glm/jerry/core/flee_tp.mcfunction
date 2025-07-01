
$execute \
    rotated ~$(y) ~$(x) \
    positioned ^ ^ ^$(distance) \
    unless block ~ ~ ~ #minecraft:air run \
        return 1

$execute \
    rotated ~$(y) ~$(x) \
    positioned ^ ^ ^$(distance) \
    align xyz positioned ~0.5 ~ ~0.5 run \
        tp @s ~ ~ ~ 0 0

scoreboard players set @s ca.ml.arc_glm.jerry.flee_desire 360000