
# ========================================================================================================================

#declare score_holder #$.THIS.rdc_pos.x.float(0.1,{TRANSLATION[0]+THIS.RDC[0]})
#declare score_holder #$.THIS.rdc_pos.y.float(0.1,{TRANSLATION[1]+THIS.RDC[1]})
#declare score_holder #$.THIS.rdc_pos.z.float(0.1,{TRANSLATION[2]+THIS.RDC[2]})

# ========================================================================================================================

##          THIS.RDC_POS[] = TRANSLATION[] + THIS.RDC[]

scoreboard players operation #$.THIS.rdc_pos.x.float(0.1,{TRANSLATION[0]+THIS.RDC[0]}) ml.classic.dlv_abl.fun = @s ml.classic.dlv_abl.tail.rdc.x
scoreboard players operation #$.THIS.rdc_pos.y.float(0.1,{TRANSLATION[1]+THIS.RDC[1]}) ml.classic.dlv_abl.fun = @s ml.classic.dlv_abl.tail.rdc.y
scoreboard players operation #$.THIS.rdc_pos.z.float(0.1,{TRANSLATION[2]+THIS.RDC[2]}) ml.classic.dlv_abl.fun = @s ml.classic.dlv_abl.tail.rdc.z

scoreboard players operation #$.THIS.rdc_pos.x.float(0.1,{TRANSLATION[0]+THIS.RDC[0]}) ml.classic.dlv_abl.fun *= ##.float(0.1,{10}) ml.classic.dlv_abl.fun
scoreboard players operation #$.THIS.rdc_pos.y.float(0.1,{TRANSLATION[1]+THIS.RDC[1]}) ml.classic.dlv_abl.fun *= ##.float(0.1,{10}) ml.classic.dlv_abl.fun
scoreboard players operation #$.THIS.rdc_pos.z.float(0.1,{TRANSLATION[2]+THIS.RDC[2]}) ml.classic.dlv_abl.fun *= ##.float(0.1,{10}) ml.classic.dlv_abl.fun

scoreboard players operation #$.THIS.rdc_pos.x.float(0.1,{TRANSLATION[0]+THIS.RDC[0]}) ml.classic.dlv_abl.fun -= #$.translation.x.float(0.1,{DX*2}) ml.classic.dlv_abl.fun
scoreboard players operation #$.THIS.rdc_pos.y.float(0.1,{TRANSLATION[1]+THIS.RDC[1]}) ml.classic.dlv_abl.fun -= #$.translation.y.float(0.1,{DY*2}) ml.classic.dlv_abl.fun
scoreboard players operation #$.THIS.rdc_pos.z.float(0.1,{TRANSLATION[2]+THIS.RDC[2]}) ml.classic.dlv_abl.fun -= #$.translation.z.float(0.1,{DZ*2}) ml.classic.dlv_abl.fun

# ========================================================================================================================

##          NBT.transformation.translation[0] = THIS.RDC_POS[0] * BLOCK_SCALE

data modify storage ca: tmp set value {rdc_pos_x:0.0f,rdc_pos_y:0.0f,rdc_pos_z:0.0f}

execute store result storage ca: tmp.rdc_pos_x float 0.1 run \
    scoreboard players get #$.THIS.rdc_pos.x.float(0.1,{TRANSLATION[0]+THIS.RDC[0]}) ml.classic.dlv_abl.fun
execute store result storage ca: tmp.rdc_pos_y float 0.1 run \
    scoreboard players get #$.THIS.rdc_pos.y.float(0.1,{TRANSLATION[1]+THIS.RDC[1]}) ml.classic.dlv_abl.fun
execute store result storage ca: tmp.rdc_pos_z float 0.1 run \
    scoreboard players get #$.THIS.rdc_pos.z.float(0.1,{TRANSLATION[2]+THIS.RDC[2]}) ml.classic.dlv_abl.fun

data modify storage ca: tmp_3 set value {scale:0.0f}
execute store result storage ca: tmp_3.scale float 0.0000000001 run scoreboard players get #$.block_scale.float(0.000000001,{0.25*MAX(DX,DY,DZ)}) ml.classic.dlv_abl.fun

function ml:classic/dvg_abl/fun/display_stack/tail/z/move/member_4/member_1 with storage ca: tmp_3

# ========================================================================================================================

