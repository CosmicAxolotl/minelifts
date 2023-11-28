
# ========================================================================================================================

summon block_display ~ ~ ~ {                                                        \
    block_state: {                                                                  \
        Name: "minecraft:yellow_wool"                                               \
    },                                                                              \
    Tags:["dlv_abl.tail_member","tmp"],                                             \
    teleport_duration: 1,                                                           \
    transformation: {                                                               \
        right_rotation:[0.0f,0.0f,0.0f,1.0f],                                       \
        left_rotation: [0.0f,0.0f,0.0f,1.0f],                                       \
        translation: [0.0f,0.0f,0.0f],                                              \
        scale: [0.0f,0.0f,0.0f]                                                     \
    }                                                                               \
}

execute as @e[type=block_display,distance=..0.00001,tag=tmp,tag=dlv_abl.tail_member,limit=1] run function ml:classic/dvg_abl/fun/display_stack/tail/z/move/member_3/member_1
ride @e[type=block_display,distance=..0.00001,tag=tmp,tag=dlv_abl.tail_member,limit=1] mount @s
tag @e[type=block_display,distance=..0.00001,tag=dlv_abl.tail_member] remove tmp

# ========================================================================================================================


