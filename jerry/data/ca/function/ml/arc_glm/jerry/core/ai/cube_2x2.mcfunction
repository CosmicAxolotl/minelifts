
playsound minecraft:entity.ender_dragon.growl hostile @a ~ ~ ~ 3 2 0.5
particle minecraft:cloud ~ ~ ~ 0.5 2 0.5 0 150 normal

execute as @a at @s run particle minecraft:entity_effect{color:[0.06, 0.9, 0.03, 1]} ~ ~ ~ 6 6 6 0 1500 normal @a

function ca:ml/arc_glm/new/jigsaw {id: "cube_2x2"}

execute as @n[distance=..3,tag=cube_2x2] \
    at @s run function ca:ml/arc_glm/jerry/core/ai/as_new_jigsaw

