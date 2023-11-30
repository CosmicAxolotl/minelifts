


tag @s add class.ml.classic.dlv_abl.tail

data merge entity @s {view_range:0.0f,teleport_duration:0}


summon block_display ~ ~ ~ {                                                        \
    block_state: {                                                                  \
        Name: "minecraft:spawner"                                                   \
    },                                                                              \
    Tags:["dlv_abl.tail_member.origin","tmp"],                                      \
    interpolation_duration: 8,                                                      \
    teleport_duration: 1,                                                           \
    transformation: {                                                               \
        right_rotation:[0.0f,0.0f,0.0f,1.0f],                                       \
        left_rotation: [0.0f,0.0f,0.0f,1.0f],                                       \
        translation: [-0.125f,-0.125f,-0.125f],                                     \
        scale: [0.25f,0.25f,0.25f]                                                  \
    }                                                                               \
}



ride @e[type=block_display,distance=..0.0001,tag=tmp,tag=dlv_abl.tail_member.origin,limit=1] mount @s

execute on passengers run function ml:classic/dvg_abl/new/display_stack/z/tail/member_1

function ml:gnr/method/get/uuid
