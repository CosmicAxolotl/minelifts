
# ========================================================================================================================

#declare tag class.ml.classic.dlv_abl.cage

#declare tag face.south
#declare tag face.north
#declare tag face.west
#declare tag face.east
#declare tag face.down
#declare tag face.up

# ========================================================================================================================

summon block_display ~ ~ ~ {                                                        \
    Tags:["class.ml.classic.dlv_abl.cage", "tmp"],                                  \
    teleport_duration: 0,                                                           \
    Passengers: [                                                                   \
        {                                                                           \
            id: "minecraft:block_display",                                          \
            block_state: {                                                          \
                Name: "minecraft:spawner"                                           \
            },                                                                      \
            teleport_duration: 1,                                                   \
            transformation: {                                                       \
                right_rotation:[0.0f,0.0f,0.0f,1.0f],                               \
                left_rotation: [0.0f,0.0f,0.0f,1.0f],                               \
                translation: [-0.25f,-0.25f,-0.25f],                                \
                scale: [0.5f,0.5f,0.5f]                                             \
            },                                                                      \
            interpolation_duration: 0,                                              \
            height: 0.5f,                                                           \
            width: 0.5f,                                                            \
        },                                                                          \
        {                                                                           \
            id: "minecraft:text_display",                                           \
            Tags:["face.south"],                                                    \
            text:'{"text":"1"}',                                                    \
            alignment: "center",                                                    \
            background: 0,                                                          \
            shadow: true,                                                           \
            teleport_duration: 1,                                                   \
            transformation: {                                                       \
                right_rotation:[0.0f,0.0f,0.0f,1.0f],                               \
                left_rotation: [0.0f,0.0f,0.0f,1.0f],                               \
                translation: [0.0f,-0.122f,0.251f],                                 \
                scale: [0.8f,0.8f,0.8f]                                             \
            }                                                                       \
        },                                                                          \
        {                                                                           \
            id: "minecraft:text_display",                                           \
            Tags:["face.north"],                                                    \
            text:'{"text":"2"}',                                                    \
            alignment: "center",                                                    \
            background: 0,                                                          \
            shadow: true,                                                           \
            teleport_duration: 1,                                                   \
            transformation: {                                                       \
                right_rotation:[0.0f,-1.0f,0.0f,0f],                                \
                left_rotation: [0.0f,0.0f,0.0f,1.0f],                               \
                translation: [0.0f,-0.122f,-0.251f],                                \
                scale: [0.8f,0.8f,0.8f]                                             \
            }                                                                       \
        },                                                                          \
        {                                                                           \
            id: "minecraft:text_display",                                           \
            Tags:["face.west"],                                                     \
            text:'{"text":"3"}',                                                    \
            alignment: "center",                                                    \
            background: 0,                                                          \
            shadow: true,                                                           \
            teleport_duration: 1,                                                   \
            transformation: {                                                       \
                right_rotation:[0.0f,-0.7071067811865475f,0.0f,0.7071067811865475f],\
                left_rotation: [0.0f,0.0f,0.0f,1.0f],                               \
                translation: [-0.251f,-0.122f,0.0f],                                \
                scale: [0.8f,0.8f,0.8f]                                             \
            }                                                                       \
        },                                                                          \
        {                                                                           \
            id: "minecraft:text_display",                                           \
            Tags:["face.east"],                                                     \
            text:'{"text":"4"}',                                                    \
            alignment: "center",                                                    \
            background: 0,                                                          \
            shadow: true,                                                           \
            teleport_duration: 1,                                                   \
            transformation: {                                                       \
            right_rotation:[0.0f,0.7071067811865475f,0.0f,0.7071067811865475f],     \
            left_rotation: [0.0f,0.0f,0.0f,1.0f],                                   \
            translation: [0.251f,-0.122f,0.0f],                                     \
            scale: [0.8f,0.8f,0.8f]                                                 \
            }                                                                       \
        },                                                                          \
        {                                                                           \
            id: "minecraft:text_display",                                           \
            Tags:["face.down"],                                                     \
            text:'{"text":"5"}',                                                    \
            alignment: "center",                                                    \
            background: 0,                                                          \
            shadow: true,                                                           \
            billboard: "vertical",                                                  \
            teleport_duration: 1,                                                   \
            transformation: {                                                       \
                right_rotation:[0.7071067811865475f,0.0f,0.0f,0.7071067811865475f], \
                left_rotation: [0.0f,0.0f,0.0f,1.0f],                               \
                translation: [0.0f,-0.251f,-0.122f],                                \
                scale: [0.8f,0.8f,0.8f]                                             \
            }                                                                       \
        },                                                                          \
        {                                                                           \
            id: "minecraft:text_display",                                           \
            Tags:["face.up"],                                                       \
            text:'{"text":"6"}',                                                    \
            alignment: "center",                                                    \
            background: 0,                                                          \
            shadow: true,                                                           \
            teleport_duration: 1,                                                   \
            billboard: "vertical",                                                  \
            transformation: {                                                       \
                right_rotation:[-0.7071067811865475f,0.0f,0.0f,0.7071067811865475f],\
                left_rotation: [0.0f,0.0f,0.0f,1.0f],                               \
                translation: [0.0f,0.251f,0.122f],                                  \
                scale: [0.8f,0.8f,0.8f]                                             \
            }                                                                       \
        },                                                                          \
        {                                                                           \
            id: "minecraft:block_display",                                          \
            Tags: ["select.face"],                                                  \
            block_state: {Name:"minecraft:lime_stained_glass"},                     \
            alignment: "center",                                                    \
            background: 0,                                                          \
            shadow: true,                                                           \
            teleport_duration: 1,                                                   \
            interpolation_duration: 4,                                              \
            transformation: {                                                       \
                right_rotation:[-0.7071067811865475f,0.0f,0.0f,0.7071067811865475f],\
                left_rotation: [0.0f,0.0f,0.0f,1.0f],                               \
                translation: [-0.25f,0.2501f,0.25f],                                \
                scale: [0.5f,0.0f,0.5f]                                             \
            }                                                                       \
        }                                                                           \
    ]                                                                               \
}

execute as @e[type=block_display,tag=tmp,tag=class.ml.classic.dlv_abl.cage,limit=1] run function ml:gnr/method/get/uuid
tag @e[type=block_display,tag=class.ml.classic.dlv_abl.cage] remove tmp

# ========================================================================================================================


summon block_display ~ ~ ~ {Tags:["select.face"],block_state:{Name:"minecraft:lime_stained_glass"},teleport_duration: 1,interpolation_duration: 2,transformation: {right_rotation:[-0.7071067811865475f,0.0f,0.0f,0.7071067811865475f],left_rotation: [0.0f,0.0f,0.0f,1.0f],translation: [-0.25f,0.2501f,-0.25f],scale: [0.25f,0.0f,0.25f]}}