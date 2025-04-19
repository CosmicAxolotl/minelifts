
function ca:gnr_lay/new/ext

$data modify storage ca:ram stack[-1].platform set from storage ca:ml/arc_glm/platforms "$(id)"

execute store result score #$.elements ca.ml.arc_glm.fun if data storage ca:ram stack[-1].platform.arrangement[{type:"core"}]
execute if score #$.elements ca.ml.arc_glm.fun matches ..0 run return run function ca:gnr_lay/delete/ext

summon minecraft:marker ~ ~ ~ {                     \
    Tags: ["ca.ml.arc_glm.pltf", "tmp"]             \
}

$tag @e[tag=tmp,limit=1] add $(id)

tag @e remove tmp


summon minecraft:block_display ~ ~ ~ {              \
    Passengers: [                                   \
        {                                           \
            id: "minecraft:marker",                 \
            Tags: [ "jigsaw_information" ]          \
        },                                          \
        {                                           \
            id: "minecraft:block_display",          \
            Tags: [ "block_mount" ]                 \
        },                                          \
    ],                                              \
    Tags: [ "tmp" , "jigsaw", "complete" ],         \
    teleport_duration: 1                            \
}


$tag @e[tag=tmp,limit=1] add $(id)

execute as @e[tag=tmp,limit=1] run function ca:ml/arc_glm/new/private/jigsaw



#summon minecraft:block_display ~ ~ ~ {                  \
#    Passengers: [                                       \
#        {                                               \
#            id: "minecraft:block_display",              \
#            Tags: [ "outer_core" ],                     \
#            start_interpolation: 0,                     \
#            interpolation_duration: 2,                  \
#            block_state: {                              \
#                Name: "minecraft:glass",         \
#            },                                          \
#            transformation: {                           \
#                left_rotation:  [ 0f, 0f, 0f, 1f ],     \
#                right_rotation: [ 0f, 0f, 0f, 1f ],     \
#                translation:    [-.5f, -.5f, -.5f],     \
#                scale:          [1.0f, 1.0f, 1.0f]      \
#            }                                           \
#        },                                              \
#        {                                               \
#            id: "minecraft:block_display",              \
#            Tags: [ "inner_core" ],                     \
#            start_interpolation: 0,                     \
#            interpolation_duration: 2,                  \
#            block_state: {                              \
#                Name: "minecraft:glass",                \
#            },                                          \
#            transformation: {                           \
#                left_rotation:  [ 0f, 0f, 0f, 1f ],     \
#                right_rotation: [ 0f, 0f, 0f, 1f ],     \
#                translation:    [-.4f, -.4f, -.4f],     \
#                scale:          [0.8f, 0.8f, 0.8f]      \
#            }                                           \
#        },                                              \
#        {                                               \
#            id: "minecraft:block_display",              \
#            Tags: [ "heart" ],                          \
#            start_interpolation: 0,                     \
#            interpolation_duration: 2,                  \
#            block_state: {                              \
#                Name: "minecraft:emerald_block",        \
#            },                                          \
#            transformation: {                           \
#                left_rotation:  [ 0f, 0f, 0f, 1f ],     \
#                right_rotation: [ 0f, 0f, 0f, 1f ],     \
#                translation:    [-.3f, -.3f, -.3f],     \
#                scale:          [0.6f, 0.6f, 0.6f]      \
#            }                                           \
#        },                                              \
#    ],                                                  \
#    Tags: [ "ca.ml.arc_glm.core" ],                     \
#    teleport_duration: 1                                \
#}



function ca:gnr_lay/delete/ext