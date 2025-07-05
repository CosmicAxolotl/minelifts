
execute on passengers \
    if entity @s[tag=ca.ml.arc_glm.djt_blk.snapper,tag=snapped] on origin \
    at @s positioned ~-0.5 ~ ~-0.5 as @a[dx=0] run damage @s 2 minecraft:sonic_boom at ~0.5 ~0.5 ~0.5

scoreboard players set #2 ca.ml.arc_glm.fun 2

scoreboard players operation @s ca.ml.arc_glm.rotation.x += @s ca.ml.arc_glm.jerry.jigsaw_torque.x
scoreboard players operation @s ca.ml.arc_glm.rotation.y += @s ca.ml.arc_glm.jerry.jigsaw_torque.y
scoreboard players operation @s ca.ml.arc_glm.rotation.z += @s ca.ml.arc_glm.jerry.jigsaw_torque.z

execute unless predicate ca:ml/arc_glm/jerry/short_periodic run return 1

scoreboard players operation @s ca.ml.arc_glm.jerry.jigsaw_torque.x /= #2 ca.ml.arc_glm.fun
scoreboard players operation @s ca.ml.arc_glm.jerry.jigsaw_torque.y /= #2 ca.ml.arc_glm.fun
scoreboard players operation @s ca.ml.arc_glm.jerry.jigsaw_torque.z /= #2 ca.ml.arc_glm.fun



execute unless predicate ca:ml/arc_glm/jerry/periodic run return 1

execute store result score @s ca.ml.arc_glm.jerry.jigsaw_torque.x run random value -12000..12000
execute store result score @s ca.ml.arc_glm.jerry.jigsaw_torque.y run random value -12000..12000
execute store result score @s ca.ml.arc_glm.jerry.jigsaw_torque.z run random value -12000..12000

