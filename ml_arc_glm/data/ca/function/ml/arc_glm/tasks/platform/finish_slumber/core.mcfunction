
execute store result storage ca:ram stack[-1].input.pos_x float 0.001 run scoreboard players get @s ca.ml.arc_glm.translation.x
execute store result storage ca:ram stack[-1].input.pos_y float 0.001 run scoreboard players get @s ca.ml.arc_glm.translation.y
execute store result storage ca:ram stack[-1].input.pos_z float 0.001 run scoreboard players get @s ca.ml.arc_glm.translation.z

function ca:ml/arc_glm/tasks/platform/finish_slumber/tp_core with storage ca:ram stack[-1].input

execute on passengers run data modify entity @s[tag=inner_core] transformation merge value {    \
    left_rotation:  [ 0f, 0f, 0f, 1f ],                                                         \
    translation:    [-.4f, 0.1f, -.4f],                                                         \
    scale:          [0.8f, 0.8f, 0.8f]                                                          \
}
execute on passengers run data modify entity @s[tag=outer_core] transformation merge value {    \
    left_rotation:  [ 0f, 0f, 0f, 1f ],                                                         \
    translation:    [-.5f, 0.0f, -.5f],                                                         \
    scale:          [1.0f, 1.0f, 1.0f]                                                          \
}

execute on passengers run data modify entity @s[tag=heart] transformation merge value {     \
    left_rotation:  [ 0f, 0f, 0f, 1f ],                                                     \
    translation:    [-.3f, 0.2f, -.3f],                                                     \
    scale:          [0.6f, 0.6f, 0.6f]                                                      \
}

execute on passengers if entity @s[tag=hitbox] run effect clear @s minecraft:resistance
execute on passengers if entity @s[tag=hitbox] run effect give @s minecraft:resistance infinite 127 true

tag @s remove awaken

