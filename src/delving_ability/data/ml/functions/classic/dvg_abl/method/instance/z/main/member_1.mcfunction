
data modify storage ca:tmp tmp set value {}

execute if data storage ca: tmp{move:"north"} run data modify storage ca:tmp tmp.transformation set value {     \
    right_rotation:[0.0f,0.0f,0.0f,1.0f],                                                                   \
    left_rotation: [0.0f,0.0f,0.0f,1.0f],                                                                   \
    translation: [-0.25f,-0.25f,0.2501f],                                                                       \
    scale: [0.5f,0.5f,0.0f]                                                                                 \
}

execute if data storage ca: tmp{move:"south"} run data modify storage ca:tmp tmp.transformation set value { \
    right_rotation:[0.0f,-1.0f,0.0f,0.0f],                                                                  \
    left_rotation: [0.0f,0.0f,0.0f,1.0f],                                                                   \
    translation: [0.25f,-0.25f,-0.2501f],                                                                   \
    scale: [0.5f,0.5f,0.0f]                                                                                 \
}

execute if data storage ca: tmp{move:"east"} run data modify storage ca:tmp tmp.transformation set value {  \
    right_rotation:[0.0f,-0.7071067811865475f,0.0f,-0.7071067811865475f],                                   \
    left_rotation: [0.0f,0.0f,0.0f,1.0f],                                                                   \
    translation: [-0.2501f,-0.25f,0.25f],                                                                   \
    scale: [0.0f,0.5f,0.5f]                                                                                 \
}

execute if data storage ca: tmp{move:"west"} run data modify storage ca:tmp tmp.transformation set value {  \
    right_rotation:[0.0f,0.7071067811865475f,0.0f,0.7071067811865475f],                                     \
    left_rotation: [0.0f,0.0f,0.0f,1.0f],                                                                   \
    translation: [0.2501f,-0.25f,0.25f],                                                                    \
    scale: [0.0f,0.5f,0.5f]                                                                                 \
}

execute if data storage ca: tmp{move:"up"} run data modify storage ca:tmp tmp.transformation set value {    \
    right_rotation:[0.7071067811865475f,0.0f,0.0f,0.7071067811865475f],                                     \
    left_rotation: [0.0f,0.0f,0.0f,1.0f],                                                                   \
    translation: [-0.25f,-0.2501f,-0.25f],                                                                  \
    scale: [0.5f,0.0f,0.5f]                                                                                 \
}

execute if data storage ca: tmp{move:"down"} run data modify storage ca:tmp tmp.transformation set value {  \
    right_rotation:[-0.7071067811865475f,0.0f,0.0f,0.7071067811865475f],                                    \
    left_rotation: [0.0f,0.0f,0.0f,1.0f],                                                                   \
    translation: [-0.25f,0.2501f,0.25f],                                                                    \
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

execute on vehicle on passengers if entity @s[tag=face.north,tag=previously_selected_face] run data modify entity @s text merge value '{"score":{{"objective":"ml.classic.dlv_abl.fun","name":"#$.tmp.face.north"}}'
execute on vehicle on passengers if entity @s[tag=face.south,tag=previously_selected_face] run data modify entity @s text merge value '{"score":{{"objective":"ml.classic.dlv_abl.fun","name":"#$.tmp.face.south"}}'
execute on vehicle on passengers if entity @s[tag=face.east,tag=previously_selected_face] run data modify entity @s text merge value '{"score":{{"objective":"ml.classic.dlv_abl.fun","name":"#$.tmp.face.west"}}'
execute on vehicle on passengers if entity @s[tag=face.west,tag=previously_selected_face] run data modify entity @s text merge value '{"score":{{"objective":"ml.classic.dlv_abl.fun","name":"#$.tmp.face.east"}}'
execute on vehicle on passengers if entity @s[tag=face.down,tag=previously_selected_face] run data modify entity @s text merge value '{"score":{{"objective":"ml.classic.dlv_abl.fun","name":"#$.tmp.face.up"}}'
execute on vehicle on passengers if entity @s[tag=face.up,tag=previously_selected_face] run data modify entity @s text merge value '{"score":{{"objective":"ml.classic.dlv_abl.fun","name":"#$.tmp.face.down"}}'


execute if score #$.tmp.face.steps ml.classic.dlv_abl.fun matches 1 run data modify storage ca:tmp tmp2.text set value '{"text":"↑"}'

execute if score #$.tmp.face.steps ml.classic.dlv_abl.fun matches -1 run data modify storage ca:tmp tmp2.text set value '{"text":"✖"}'

execute unless score #$.tmp.face.steps ml.classic.dlv_abl.fun matches -1 unless score #$.tmp.face.steps ml.classic.dlv_abl.fun matches 1 run function ml:classic/dvg_abl/method/instance/z/main/member_1/member_1

execute if data storage ca: tmp{move:"south"} on vehicle on passengers run tag @s[tag=face.north] add previously_selected_face
execute if data storage ca: tmp{move:"north"} on vehicle on passengers run tag @s[tag=face.south] add previously_selected_face
execute if data storage ca: tmp{move:"west"} on vehicle on passengers run tag @s[tag=face.east] add previously_selected_face
execute if data storage ca: tmp{move:"east"} on vehicle on passengers run tag @s[tag=face.west] add previously_selected_face
execute if data storage ca: tmp{move:"up"} on vehicle on passengers run tag @s[tag=face.down] add previously_selected_face
execute if data storage ca: tmp{move:"down"} on vehicle on passengers run tag @s[tag=face.up] add previously_selected_face


execute if data storage ca: tmp{move:"south"} on vehicle on passengers if entity @s[tag=face.north] run data modify entity @s {} merge from storage ca:tmp tmp2
execute if data storage ca: tmp{move:"north"} on vehicle on passengers if entity @s[tag=face.south] run data modify entity @s {} merge from storage ca:tmp tmp2
execute if data storage ca: tmp{move:"west"} on vehicle on passengers if entity @s[tag=face.east] run data modify entity @s {} merge from storage ca:tmp tmp2
execute if data storage ca: tmp{move:"east"} on vehicle on passengers if entity @s[tag=face.west] run data modify entity @s {} merge from storage ca:tmp tmp2
execute if data storage ca: tmp{move:"up"} on vehicle on passengers if entity @s[tag=face.down] run data modify entity @s {} merge from storage ca:tmp tmp2
execute if data storage ca: tmp{move:"down"} on vehicle on passengers if entity @s[tag=face.up] run data modify entity @s {} merge from storage ca:tmp tmp2

data modify entity @s {} merge from storage ca:tmp tmp

tag @s add previously_selected_face