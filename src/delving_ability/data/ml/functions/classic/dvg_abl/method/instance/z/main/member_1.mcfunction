
data modify storage ca:tmp tmp set value {interpolation_duration:-1}

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


execute if score #$.tmp.face.steps ml.classic.dlv_abl.fun matches 1 run data modify storage ca:tmp tmp2.text set value '{"text":"↑","color":"#6FF013"}'

execute if score #$.tmp.face.steps ml.classic.dlv_abl.fun matches -1 run data modify storage ca:tmp tmp2.text set value '{"text":"✖","color":"#F01313"}'



scoreboard players set #.$condition ml.classic.dlv_abl.fun 0
execute on vehicle on passengers if entity @s[tag=previously_selected_face] run function ml:classic/dvg_abl/method/instance/z/main/member_1/member_4



execute if score #$.tmp.face.south ml.classic.dlv_abl.fun matches ..-1 run \
    scoreboard players operation #$.tmp.face.south ml.classic.dlv_abl.fun *= #-1 ml.classic.dlv_abl.fun

execute if score #$.tmp.face.north ml.classic.dlv_abl.fun matches ..-1 run \
    scoreboard players operation #$.tmp.face.north ml.classic.dlv_abl.fun *= #-1 ml.classic.dlv_abl.fun

execute if score #$.tmp.face.west ml.classic.dlv_abl.fun matches ..-1 run \
    scoreboard players operation #$.tmp.face.west ml.classic.dlv_abl.fun *= #-1 ml.classic.dlv_abl.fun

execute if score #$.tmp.face.east ml.classic.dlv_abl.fun matches ..-1 run \
    scoreboard players operation #$.tmp.face.east ml.classic.dlv_abl.fun *= #-1 ml.classic.dlv_abl.fun

execute if score #$.tmp.face.up ml.classic.dlv_abl.fun matches ..-1 run \
    scoreboard players operation #$.tmp.face.up ml.classic.dlv_abl.fun *= #-1 ml.classic.dlv_abl.fun

execute if score #$.tmp.face.down ml.classic.dlv_abl.fun matches ..-1 run \
    scoreboard players operation #$.tmp.face.down ml.classic.dlv_abl.fun *= #-1 ml.classic.dlv_abl.fun




execute unless score #$.tmp.face.steps ml.classic.dlv_abl.fun matches -1..1 run function ml:classic/dvg_abl/method/instance/z/main/member_1/member_1


execute unless score #.$condition ml.classic.dlv_abl.fun matches 1 on vehicle on passengers if entity @s[tag=previously_selected_face] run function ml:classic/dvg_abl/method/instance/z/main/member_1/member_3


execute if data storage ca: tmp{move:"south"} on vehicle on passengers run tag @s[tag=face.north] add previously_selected_face
execute if data storage ca: tmp{move:"north"} on vehicle on passengers run tag @s[tag=face.south] add previously_selected_face
execute if data storage ca: tmp{move:"west"} on vehicle on passengers run tag @s[tag=face.east] add previously_selected_face
execute if data storage ca: tmp{move:"east"} on vehicle on passengers run tag @s[tag=face.west] add previously_selected_face
execute if data storage ca: tmp{move:"up"} on vehicle on passengers run tag @s[tag=face.down] add previously_selected_face
execute if data storage ca: tmp{move:"down"} on vehicle on passengers run tag @s[tag=face.up] add previously_selected_face


execute if data storage ca: tmp{move:"south"} on vehicle on passengers if entity @s[tag=face.north] run function ml:classic/dvg_abl/method/instance/z/main/member_1/member_2
execute if data storage ca: tmp{move:"north"} on vehicle on passengers if entity @s[tag=face.south] run function ml:classic/dvg_abl/method/instance/z/main/member_1/member_2
execute if data storage ca: tmp{move:"west"} on vehicle on passengers if entity @s[tag=face.east] run function ml:classic/dvg_abl/method/instance/z/main/member_1/member_2
execute if data storage ca: tmp{move:"east"} on vehicle on passengers if entity @s[tag=face.west] run function ml:classic/dvg_abl/method/instance/z/main/member_1/member_2
execute if data storage ca: tmp{move:"up"} on vehicle on passengers if entity @s[tag=face.down] run function ml:classic/dvg_abl/method/instance/z/main/member_1/member_2
execute if data storage ca: tmp{move:"down"} on vehicle on passengers if entity @s[tag=face.up] run function ml:classic/dvg_abl/method/instance/z/main/member_1/member_2


data modify entity @s {} merge from storage ca:tmp tmp

