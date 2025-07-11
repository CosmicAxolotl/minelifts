
$execute \
    positioned ~$(pos_x) ~$(pos_y) ~$(pos_z) \
    align xyz positioned ~.5 ~ ~.5 run \
        summon minecraft:block_display ~ ~ ~ {                                      \
            Passengers: [                                                           \
                {                                                                   \
                    id: "minecraft:block_display",                                  \
                    Tags: [ "outer_core" ],                                         \
                    start_interpolation: 0,                                         \
                    interpolation_duration: 2,                                      \
                    block_state: {                                                  \
                        Name: "minecraft:glass",                                    \
                    },                                                              \
                    transformation: {                                               \
                        left_rotation:  [ 0f, 0f, 0f, 1f ],                         \
                        right_rotation: [ 0f, 0f, 0f, 1f ],                         \
                        translation:    [-.5f, 0.0f, -.5f],                         \
                        scale:          [1.0f, 1.0f, 1.0f]                          \
                    }                                                               \
                },                                                                  \
                {                                                                   \
                    id: "minecraft:block_display",                                  \
                    Tags: [ "inner_core" ],                                         \
                    start_interpolation: 0,                                         \
                    interpolation_duration: 2,                                      \
                    block_state: {                                                  \
                        Name: "minecraft:glass",                                    \
                    },                                                              \
                    transformation: {                                               \
                        left_rotation:  [ 0f, 0f, 0f, 1f ],                         \
                        right_rotation: [ 0f, 0f, 0f, 1f ],                         \
                        translation:    [-.4f, 0.1f, -.4f],                         \
                        scale:          [0.8f, 0.8f, 0.8f]                          \
                    }                                                               \
                },                                                                  \
                {                                                                   \
                    id: "minecraft:block_display",                                  \
                    Tags: [ "heart" ],                                              \
                    start_interpolation: 0,                                         \
                    interpolation_duration: 2,                                      \
                    block_state: {                                                  \
                        Name: "minecraft:emerald_block",                            \
                    },                                                              \
                    transformation: {                                               \
                        left_rotation:  [ 0f, 0f, 0f, 1f ],                         \
                        right_rotation: [ 0f, 0f, 0f, 1f ],                         \
                        translation:    [-.3f, 0.2f, -.3f],                         \
                        scale:          [0.6f, 0.6f, 0.6f]                          \
                    }                                                               \
                },                                                                  \
                {                                                                   \
                    id: "minecraft:slime",                                          \
                    Tags: [ "hitbox" ],                                             \
                    active_effects: [                                               \
                        {                                                           \
                            duration: -1, show_icon: false,                         \
                            amplifier: 127b,                                        \
                            id: "minecraft:resistance",                             \
                            show_particles: false                                   \
                        },                                                          \
                        {                                                           \
                            duration: -1, show_icon: false,                         \
                            amplifier: 0b,                                          \
                            id: "minecraft:regeneration",                           \
                            show_particles: false                                   \
                        },                                                          \
                        {                                                           \
                            duration: -1, show_icon: false,                         \
                            amplifier: 0b,                                          \
                            id: "minecraft:invisibility",                           \
                            show_particles: false                                   \
                        },                                                          \
                    ],                                                              \
                    PersistenceRequired: true,                                      \
                    Silent: true,                                                   \
                    Health: 600.0f,                                                 \
                    NoAI: true,                                                     \
                    attributes: [                                                   \
                        { id: "minecraft:max_health", base: 600.0d },               \
                        { id: "minecraft:scale",      base: 1.92307692308d },       \
                    ],                                                              \
                    Team: "no_collisions",                                          \
                    DeathLootTable: ""                                              \
                },                                                                  \
            ],                                                                      \
            Tags: [ "ca.ml.arc_glm.core", "tmp" ],                                  \
            teleport_duration: 1                                                    \
        }

execute store result score @e[tag=tmp,tag=ca.ml.arc_glm.core,limit=1] ca.ml.arc_glm.id run \
    data get storage ca:ram stack[-1].platform_id

execute store result score @e[tag=tmp,tag=ca.ml.arc_glm.core,limit=1] ca.ml.arc_glm.translation.x run data get storage ca:ram stack[-1].block_iterated.pos[0] 1000
execute store result score @e[tag=tmp,tag=ca.ml.arc_glm.core,limit=1] ca.ml.arc_glm.translation.y run data get storage ca:ram stack[-1].block_iterated.pos[1] 1000
execute store result score @e[tag=tmp,tag=ca.ml.arc_glm.core,limit=1] ca.ml.arc_glm.translation.z run data get storage ca:ram stack[-1].block_iterated.pos[2] 1000

tag @e[tag=tmp,tag=ca.ml.arc_glm.core,limit=1] remove tmp
