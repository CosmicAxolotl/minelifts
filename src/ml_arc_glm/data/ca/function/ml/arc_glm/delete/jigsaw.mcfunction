

function ca:gnr_lay/new/ext

gamerule doTileDrops false
execute \
    if entity @s[tag=platform] \
    on passengers if entity @s[tag=block_mount] \
    on passengers run \
        function ca:ml/arc_glm/delete/platform_animation
gamerule doTileDrops true

execute on passengers run kill @s[tag=jigsaw_information]
execute on passengers run tag @s remove clockwise
execute on passengers if predicate {condition:"random_chance",chance:0.5} run tag @s add clockwise

execute on passengers \
    if entity @s[tag=block_mount] on passengers run function ca:ml/arc_glm/delete/jigsaw/spread


execute on passengers run kill @s[tag=block_mount]

kill @s

playsound minecraft:entity.zombie.break_wooden_door hostile @a ~ ~ ~ 2.5 0.8
playsound minecraft:block.stone.break hostile @a ~ ~ ~ 2.5 0.8
playsound minecraft:entity.zombie.attack_iron_door hostile @a ~ ~ ~ 2.5 0.8

particle minecraft:cloud ~ ~ ~ 1 1 1 0.1 150 force

function ca:gnr_lay/delete/ext

