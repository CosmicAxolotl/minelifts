
# ========================================================================================================================

data modify storage ca: tmp set value {                                             \
    transformation: {                                                               \
        right_rotation:[0.0f,0.0f,0.0f,1.0f],                                       \
        left_rotation: [0.0f,0.0f,0.0f,1.0f],                                       \
        translation: [0.0f,0.0f,0.0f],                                              \
        scale: [0.0f,0.0f,0.0f]                                                     \
    }                                                                               \
}

# ========================================================================================================================

$execute store result storage ca: tmp.transformation.translation[0] float $(scale) run scoreboard players get #$.THIS.rdc_pos.x.float(0.1,{TRANSLATION[0]+THIS.RDC[0]}) ml.classic.dlv_abl.fun
$execute store result storage ca: tmp.transformation.translation[1] float $(scale) run scoreboard players get #$.THIS.rdc_pos.y.float(0.1,{TRANSLATION[1]+THIS.RDC[1]}) ml.classic.dlv_abl.fun
$execute store result storage ca: tmp.transformation.translation[2] float $(scale) run scoreboard players get #$.THIS.rdc_pos.z.float(0.1,{TRANSLATION[2]+THIS.RDC[2]}) ml.classic.dlv_abl.fun

data modify storage ca: tmp.transformation.scale[0] set from storage ca: tmp_2.block_scale
data modify storage ca: tmp.transformation.scale[1] set from storage ca: tmp_2.block_scale
data modify storage ca: tmp.transformation.scale[2] set from storage ca: tmp_2.block_scale

data modify entity @s transformation set from storage ca: tmp.transformation

# ========================================================================================================================
