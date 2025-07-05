

function ca:gnr_lay/new/ext

gamerule doTileDrops false
execute \
    if entity @s[tag=platform] \
    on passengers on passengers run \
        function ca:ml/arc_glm/delete/platform_animation
gamerule doTileDrops true

execute on passengers run kill @s[tag=jigsaw_information]
execute on passengers run tag @s remove clockwise
execute on passengers if predicate {condition:"random_chance",chance:0.5} run tag @s add clockwise

execute on passengers \
    if entity @s[type=area_effect_cloud] on passengers run function ca:ml/arc_glm/delete/jigsaw/spread


execute on passengers run kill @s[tag=block_mount]

execute if score @s ca.ml.arc_glm.count matches 61.. run \
    playsound minecraft:entity.zombie.break_wooden_door hostile @a ~ ~ ~ 0.7 0.8
execute if score @s ca.ml.arc_glm.count matches 20..60 run \
    playsound minecraft:entity.zombie.break_wooden_door hostile @a ~ ~ ~ 0.3 0.8
execute if score @s ca.ml.arc_glm.count matches 10.. run \
    playsound minecraft:entity.zombie.attack_iron_door hostile @a ~ ~ ~ 2.5 0.8
execute if score @s ca.ml.arc_glm.count matches 2.. run \
    playsound minecraft:block.stone.break hostile @a ~ ~ ~ 2.5 0.8


execute if score @s ca.ml.arc_glm.count.block matches 2.. run \
    particle minecraft:cloud ~ ~ ~ 1 1 1 0.1 150 force

kill @s

function ca:gnr_lay/delete/ext

