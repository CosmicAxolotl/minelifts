
# =========================================================================================================================

function ca:gnr_lay/new/int

tag @s add tmp

# =========================================================================================================================

data modify storage ca:ram stack[-1].faces set value [{},{},{},{},{},{}]

    data modify storage ca:ram stack[-1].faces[].id set value "minecraft:text_display"

    data modify storage ca:ram stack[-1].faces[].interpolation_duration set value 0
    data modify storage ca:ram stack[-1].faces[].teleport_duration set value 1

    data modify storage ca:ram stack[-1].faces[].height set value 0.5f
    data modify storage ca:ram stack[-1].faces[].width set value 0.5f
    data modify storage ca:ram stack[-1].faces[].transformation set value {scale:[0.8f,0.8f,0.8f],left_rotation:[0.0f,0.0f,0.0f,1.0f]}

    data modify storage ca:ram stack[-1].faces[].text set value '{"text":"???"}'
    data modify storage ca:ram stack[-1].faces[].alignment set value "center"
    data modify storage ca:ram stack[-1].faces[].background set value 0
    data modify storage ca:ram stack[-1].faces[].shadow set value true


data modify storage ca:ram stack[-1].faces[0].Tags set value ["face.south"]
    data modify storage ca:ram stack[-1].faces[0].transformation.right_rotation set value [0.0f,0.0f,0.0f,1.0f]
    data modify storage ca:ram stack[-1].faces[0].transformation.translation set value [0.0f,-0.122f,0.251f]


data modify storage ca:ram stack[-1].faces[1].Tags set value ["face.north"]
    data modify storage ca:ram stack[-1].faces[1].transformation.right_rotation set value [0.0f,-1.0f,0.0f,0f]
    data modify storage ca:ram stack[-1].faces[1].transformation.translation set value [0.0f,-0.122f,-0.251f]


data modify storage ca:ram stack[-1].faces[2].Tags set value ["face.west"]
    data modify storage ca:ram stack[-1].faces[2].transformation.right_rotation set value [0.0f,-0.7071067811865475f,0.0f,0.7071067811865475f]
    data modify storage ca:ram stack[-1].faces[2].transformation.translation set value [-0.251f,-0.122f,0.0f]


data modify storage ca:ram stack[-1].faces[3].Tags set value ["face.east"]
    data modify storage ca:ram stack[-1].faces[3].transformation.right_rotation set value [0.0f,0.7071067811865475f,0.0f,0.7071067811865475f]
    data modify storage ca:ram stack[-1].faces[3].transformation.translation set value [0.251f,-0.122f,0.0f]


data modify storage ca:ram stack[-1].faces[4].Tags set value ["face.down"]
    data modify storage ca:ram stack[-1].faces[4].transformation.right_rotation set value [0.7071067811865475f,0.0f,0.0f,0.7071067811865475f]
    data modify storage ca:ram stack[-1].faces[4].transformation.translation set value [0.0f,-0.251f,-0.122f]
    data modify storage ca:ram stack[-1].faces[4].billboard set value "vertical"


data modify storage ca:ram stack[-1].faces[5].Tags set value ["face.up"]
    data modify storage ca:ram stack[-1].faces[5].transformation.right_rotation set value [-0.7071067811865475f,0.0f,0.0f,0.7071067811865475f]
    data modify storage ca:ram stack[-1].faces[5].transformation.translation set value [0.0f,0.251f,0.122f]
    data modify storage ca:ram stack[-1].faces[5].billboard set value "vertical"


data modify storage ca:ram stack[-1].entity_nbt set value {UUID:[I;0,0,0,4]}
    data modify storage ca:ram stack[-1].entity_nbt.Passengers set from storage ca:ram stack[-1].faces
    data modify storage ca:ram stack[-1].entity_nbt.Passengers append value {id:"minecraft:block_display",Tags:["not_a_face"],height:0.5f,width:0.5f,interpolation_duration:0,teleport_duration:1,block_state:{Name:"minecraft:light_gray_stained_glass"},transformation:{right_rotation:[0.0f,0.0f,0.0f,1.0f],left_rotation:[0.0f,0.0f,0.0f,1.0f],translation:[-0.25f,-0.25f,-0.25f],scale:[0.5f,0.5f,0.5f]}}
    data modify storage ca:ram stack[-1].entity_nbt.Passengers append value {id:"minecraft:block_display",Tags:["not_a_face","select.face"],height:0.5f,width:0.5f,interpolation_duration:0,teleport_duration:1,Glowing:true,glow_color_override:7335955,brightness:{sky:15,block:15},block_state:{Name:"minecraft:lime_stained_glass"},transformation:{right_rotation:[-0.7071067811865475f,0.0f,0.0f,0.7071067811865475f],left_rotation:[0.0f,0.0f,0.0f,1.0f],translation:[-0.25f,0.2409f,0.25f],scale:[0.5f,0.0f,0.5f]}}

    function ca:dvg_abl/instance/constructor/cage_stack_members with storage ca:ram stack[-1]

data merge entity @s {view_range:0.0f,teleport_duration:0}

# =========================================================================================================================

tag @s remove tmp

function ca:gnr_lay/delete/int

return 1

# =========================================================================================================================
