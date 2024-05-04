
# =========================================================================================================================

function ca:gnr_lay/new/int

tag @s add tmp

# =========================================================================================================================

data modify storage ca:ram stack[-1].arrows set value [{},{},{},{},{},{},{},{},{},{}]
    data modify storage ca:ram stack[-1].arrows[].id set value "minecraft:text_display"

    data modify storage ca:ram stack[-1].arrows[].interpolation_duration set value 0
    data modify storage ca:ram stack[-1].arrows[].teleport_duration set value 1

    data modify storage ca:ram stack[-1].arrows[].height set value 0.5f
    data modify storage ca:ram stack[-1].arrows[].width set value 0.5f

    data modify storage ca:ram stack[-1].arrows[].text set value '{"text":" →"}'
    data modify storage ca:ram stack[-1].arrows[].alignment set value "left"
    data modify storage ca:ram stack[-1].arrows[].background set value 0
    data modify storage ca:ram stack[-1].arrows[].shadow set value true
    data modify storage ca:ram stack[-1].arrows[].billboard set value "horizontal"
    data modify storage ca:ram stack[-1].arrows[].shadow set value false

# =========================================================================================================================

data modify storage ca:ram stack[-1].arrows[].transformation set value {scale:[1f,0.5f,0.5f],left_rotation:[0.0f,0.0f,0.0f,1.0f]}

    data modify storage ca:ram stack[-1].arrows[0].text set value '{"text":" →","color":"#0000FF"}'
    data modify storage ca:ram stack[-1].arrows[0].transformation.right_rotation set value [0.0f,0.0f,0.0f,1.0f]
    data modify storage ca:ram stack[-1].arrows[0].transformation.translation set value [0.03f,-0.08f,0.0f]
    data modify storage ca:ram stack[-1].arrows[0].Rotation set value [90.0f,0.0f]

    data modify storage ca:ram stack[-1].arrows[1].text set value '{"text":" →","color":"#0000FF"}'
    data modify storage ca:ram stack[-1].arrows[1].transformation.right_rotation set value [0.0f,0.0f,0.0f,1.0f]
    data modify storage ca:ram stack[-1].arrows[1].transformation.translation set value [0.03f,-0.08f,0.0f]
    data modify storage ca:ram stack[-1].arrows[1].Rotation set value [-90.0f,0.0f]

    data modify storage ca:ram stack[-1].arrows[2].text set value '{"text":" →","color":"#FF0000"}'
    data modify storage ca:ram stack[-1].arrows[2].transformation.right_rotation set value [0.0f,0.0f,0.0f,1.0f]
    data modify storage ca:ram stack[-1].arrows[2].transformation.translation set value [0.03f,-0.08f,0.0f]
    data modify storage ca:ram stack[-1].arrows[2].Rotation set value [-180.0f,0.0f]

    data modify storage ca:ram stack[-1].arrows[3].text set value '{"text":" →","color":"#FF0000"}'
    data modify storage ca:ram stack[-1].arrows[3].transformation.right_rotation set value [0.0f,0.0f,0.0f,1.0f]
    data modify storage ca:ram stack[-1].arrows[3].transformation.translation set value [0.03f,-0.08f,0.0f]
    data modify storage ca:ram stack[-1].arrows[3].Rotation set value [0.0f,0.0f]

    data modify storage ca:ram stack[-1].arrows[4].text set value '{"text":" →","color":"#00FF00"}'
    data modify storage ca:ram stack[-1].arrows[4].transformation.right_rotation set value [0f,0f,0.7071067811865475f,-0.7071067811865475f]
    data modify storage ca:ram stack[-1].arrows[4].transformation.translation set value [-0.08f,-0.03f,0.0f]
    data modify storage ca:ram stack[-1].arrows[4].transformation.scale set value [0.5f,1.0f,0.5f]
    data modify storage ca:ram stack[-1].arrows[4].billboard set value "vertical"

    data modify storage ca:ram stack[-1].arrows[5].text set value '{"text":" →","color":"#00FF00"}'
    data modify storage ca:ram stack[-1].arrows[5].transformation.right_rotation set value [0f,0f,0.7071067811865475f,0.7071067811865475f]
    data modify storage ca:ram stack[-1].arrows[5].transformation.translation set value [0.08f,0.03f,0.0f]
    data modify storage ca:ram stack[-1].arrows[5].transformation.scale set value [0.5f,1.0f,0.5f]
    data modify storage ca:ram stack[-1].arrows[5].billboard set value "vertical"

    data modify storage ca:ram stack[-1].arrows[6].text set value '{"text":" →","color":"#0000FF"}'
    data modify storage ca:ram stack[-1].arrows[6].transformation.right_rotation set value [0.0f,0.0f,1.0f,0.0f]
    data modify storage ca:ram stack[-1].arrows[6].transformation.translation set value [-0.03f,0.08f,0.0f]
    data modify storage ca:ram stack[-1].arrows[6].Rotation set value [90.0f,0.0f]

    data modify storage ca:ram stack[-1].arrows[7].text set value '{"text":" →","color":"#0000FF"}'
    data modify storage ca:ram stack[-1].arrows[7].transformation.right_rotation set value [0.0f,0.0f,1.0f,0.0f]
    data modify storage ca:ram stack[-1].arrows[7].transformation.translation set value [-0.03f,0.08f,0.0f]
    data modify storage ca:ram stack[-1].arrows[7].Rotation set value [-90.0f,0.0f]

    data modify storage ca:ram stack[-1].arrows[8].text set value '{"text":" →","color":"#FF0000"}'
    data modify storage ca:ram stack[-1].arrows[8].transformation.right_rotation set value [0.0f,0.0f,1.0f,0.0f]
    data modify storage ca:ram stack[-1].arrows[8].transformation.translation set value [-0.03f,0.08f,0.0f]
    data modify storage ca:ram stack[-1].arrows[8].Rotation set value [-180.0f,0.0f]

    data modify storage ca:ram stack[-1].arrows[9].text set value '{"text":" →","color":"#FF0000"}'
    data modify storage ca:ram stack[-1].arrows[9].transformation.right_rotation set value [0.0f,0.0f,1.0f,0.0f]
    data modify storage ca:ram stack[-1].arrows[9].transformation.translation set value [-0.03f,0.08f,0.0f]
    data modify storage ca:ram stack[-1].arrows[9].Rotation set value [0.0f,0.0f]

# =========================================================================================================================

data modify storage ca:ram stack[-1].entity_nbt set value {UUID:[I;0,0,0,4]}
    data modify storage ca:ram stack[-1].entity_nbt.Passengers set from storage ca:ram stack[-1].letters
    data modify storage ca:ram stack[-1].entity_nbt.Passengers append from storage ca:ram stack[-1].arrows[]

function ca:dvg_abl/instance/constructor/cage_stack_members with storage ca:ram stack[-1]

# =========================================================================================================================

tag @s remove tmp
data merge entity @s {view_range:0.0f,teleport_duration:0}

function ca:gnr_lay/delete/int

return 1

# =========================================================================================================================
