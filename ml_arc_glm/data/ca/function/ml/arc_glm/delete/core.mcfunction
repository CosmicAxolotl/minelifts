
execute on passengers run kill @s[tag=!jigsaw]
execute on passengers run function ca:ml/arc_glm/delete/jigsaw

kill @s

particle minecraft:totem_of_undying ~ ~0.5 ~ 0.5 0.5 0.5 0.7 200 force @a
particle minecraft:flash ~ ~0.5 ~ 0 0 0 3 0 force @a
particle minecraft:explosion ~ ~ ~ 0.5 0.5 0.5 0.1 5 force @a
particle minecraft:smoke ~ ~ ~ 0.4 0.4 0.4 0.2 200 force @a
particle minecraft:block{block_state:"minecraft:emerald_block"} ~ ~0.5 ~ 0.5 0.5 0.5 0 400

playsound minecraft:entity.ender_dragon.hurt hostile @a ~ ~0.5 ~ 9999999999 0.8 1
playsound minecraft:entity.generic.explode hostile @a ~ ~0.5 ~ 3.5 0.7

summon firework_rocket ~ ~-0.2 ~ {                      \
    Life: 1,                                            \
    LifeTime: 0,                                        \
    Silent: true,                                       \
    FireworksItem: {                                    \
        id: firework_rocket,                            \
        components: {                                   \
            fireworks: {                                \
                flight_duration: 2,                     \
                explosions: [                           \
                    {                                   \
                        shape: "star",                  \
                        has_trail: true,                \
                        colors: [ 6608981 ],            \
                        fade_colors: [ 16777215 ]       \
                    },                                  \
                    {                                   \
                        shape: "burst",                 \
                        has_trail: true,                \
                        colors: [ 9826447 ]             \
                    }                                   \
                ]                                       \
            }                                           \
        }                                               \
    }                                                   \
}
