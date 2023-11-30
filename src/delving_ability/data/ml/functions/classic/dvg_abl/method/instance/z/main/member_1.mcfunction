
data modify storage ca:tmp tmp set value {}

execute if data storage ca: tmp{move:"north"} run data modify storage ca:tmp tmp.transformation set value {     \
    right_rotation:[0.0f,0.0f,0.0f,1.0f],                                                                   \
    left_rotation: [0.0f,0.0f,0.0f,1.0f],                                                                   \
    translation: [-0.25f,-0.25f,0.2501f],                                                                       \
    scale: [0.5f,0.5f,0.0f]                                                                                 \
}

execute if data storage ca: tmp{move:"south"} run data modify storage ca:tmp tmp.transformation set value {     \
    right_rotation:[0.0f,-1.0f,0.0f,0.0f],                                                                   \
    left_rotation: [0.0f,0.0f,0.0f,1.0f],                                                                   \
    translation: [0.25f,-0.25f,-0.2501f],                                                                       \
    scale: [0.5f,0.5f,0.0f]                                                                                 \
}

execute if data storage ca: tmp{move:"east"} run data modify storage ca:tmp tmp.transformation set value {     \
    right_rotation:[0.0f,-0.7071067811865475f,0.0f,-0.7071067811865475f],                                                                   \
    left_rotation: [0.0f,0.0f,0.0f,1.0f],                                                                   \
    translation: [-0.2501f,-0.25f,0.25f],                                                                       \
    scale: [0.0f,0.5f,0.5f]                                                                                 \
}

execute if data storage ca: tmp{move:"west"} run data modify storage ca:tmp tmp.transformation set value {     \
    right_rotation:[0.0f,0.7071067811865475f,0.0f,0.7071067811865475f],                                                                   \
    left_rotation: [0.0f,0.0f,0.0f,1.0f],                                                                   \
    translation: [0.2501f,-0.25f,0.25f],                                                                       \
    scale: [0.0f,0.5f,0.5f]                                                                                 \
}

execute if data storage ca: tmp{move:"up"} run data modify storage ca:tmp tmp.transformation set value {     \
    right_rotation:[0.7071067811865475f,0.0f,0.0f,0.7071067811865475f],                                                                   \
    left_rotation: [0.0f,0.0f,0.0f,1.0f],                                                                   \
    translation: [-0.25f,-0.2501f,-0.25f],                                                                       \
    scale: [0.5f,0.0f,0.5f]                                                                                 \
}

execute if data storage ca: tmp{move:"down"} run data modify storage ca:tmp tmp.transformation set value {     \
    right_rotation:[-0.7071067811865475f,0.0f,0.0f,0.7071067811865475f],                                                                   \
    left_rotation: [0.0f,0.0f,0.0f,1.0f],                                                                   \
    translation: [-0.25f,0.2501f,0.25f],                                                                       \
    scale: [0.5f,0.0f,0.5f]                                                                                 \
}

execute if score #$.tmp.face.steps ml.classic.dlv_abl.fun matches 1.. run data modify storage ca:tmp tmp merge value {\
    block_state: {Name:"minecraft:lime_stained_glass"},\
    glow_color_override: 7335955\
}

execute if score #$.tmp.face.steps ml.classic.dlv_abl.fun matches ..-2 run data modify storage ca:tmp tmp merge value {\
    block_state: {Name:"minecraft:orange_stained_glass"},\
    glow_color_override: 15758099\
}

execute if score #$.tmp.face.steps ml.classic.dlv_abl.fun matches -1 run data modify storage ca:tmp tmp merge value {\
    block_state: {Name:"minecraft:red_stained_glass"},\
    glow_color_override: 15733523\
}

execute if score #$.tmp.face.steps ml.classic.dlv_abl.fun matches 0 run data modify storage ca:tmp tmp merge value {\
    block_state: {Name:"minecraft:black_stained_glass"},\
    glow_color_override: 1710618\
}

data modify entity @s {} merge from storage ca:tmp tmp
