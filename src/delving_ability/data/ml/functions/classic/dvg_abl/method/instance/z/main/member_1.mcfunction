
execute if data storage ca: tmp{move:"north"} run data modify storage ca:tmp transformation set value {     \
    right_rotation:[0.0f,0.0f,0.0f,1.0f],                                                                   \
    left_rotation: [0.0f,0.0f,0.0f,1.0f],                                                                   \
    translation: [-0.25f,-0.25f,0.2501f],                                                                       \
    scale: [0.5f,0.5f,0.0f]                                                                                 \
}

execute if data storage ca: tmp{move:"south"} run data modify storage ca:tmp transformation set value {     \
    right_rotation:[0.0f,-1.0f,0.0f,0.0f],                                                                   \
    left_rotation: [0.0f,0.0f,0.0f,1.0f],                                                                   \
    translation: [0.25f,-0.25f,-0.2501f],                                                                       \
    scale: [0.5f,0.5f,0.0f]                                                                                 \
}

execute if data storage ca: tmp{move:"east"} run data modify storage ca:tmp transformation set value {     \
    right_rotation:[0.0f,-0.7071067811865475f,0.0f,-0.7071067811865475f],                                                                   \
    left_rotation: [0.0f,0.0f,0.0f,1.0f],                                                                   \
    translation: [-0.2501f,-0.25f,0.25f],                                                                       \
    scale: [0.0f,0.5f,0.5f]                                                                                 \
}

execute if data storage ca: tmp{move:"west"} run data modify storage ca:tmp transformation set value {     \
    right_rotation:[0.0f,0.7071067811865475f,0.0f,0.7071067811865475f],                                                                   \
    left_rotation: [0.0f,0.0f,0.0f,1.0f],                                                                   \
    translation: [0.2501f,-0.25f,0.25f],                                                                       \
    scale: [0.0f,0.5f,0.5f]                                                                                 \
}

execute if data storage ca: tmp{move:"up"} run data modify storage ca:tmp transformation set value {     \
    right_rotation:[0.7071067811865475f,0.0f,0.0f,0.7071067811865475f],                                                                   \
    left_rotation: [0.0f,0.0f,0.0f,1.0f],                                                                   \
    translation: [-0.25f,-0.2501f,-0.25f],                                                                       \
    scale: [0.5f,0.0f,0.5f]                                                                                 \
}

execute if data storage ca: tmp{move:"down"} run data modify storage ca:tmp transformation set value {     \
    right_rotation:[-0.7071067811865475f,0.0f,0.0f,0.7071067811865475f],                                                                   \
    left_rotation: [0.0f,0.0f,0.0f,1.0f],                                                                   \
    translation: [-0.25f,0.2501f,0.25f],                                                                       \
    scale: [0.5f,0.0f,0.5f]                                                                                 \
}

data modify entity @s transformation set from storage ca:tmp transformation
