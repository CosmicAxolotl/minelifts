
# ========================================================================================================================

#declare score_holder #$.tmp.size.x.min
#declare score_holder #$.tmp.size.y.min
#declare score_holder #$.tmp.size.z.min
#declare score_holder #$.tmp.size.x.max
#declare score_holder #$.tmp.size.y.max
#declare score_holder #$.tmp.size.z.max

# ========================================================================================================================

execute on passengers run \
    tag @s add tmp

scoreboard players set #$.tmp.size.x.max ml.classic.dlv_abl.fun -2147483648
scoreboard players set #$.tmp.size.y.max ml.classic.dlv_abl.fun -2147483648
scoreboard players set #$.tmp.size.z.max ml.classic.dlv_abl.fun -2147483648

scoreboard players set #$.tmp.size.x.min ml.classic.dlv_abl.fun 2147483647
scoreboard players set #$.tmp.size.y.min ml.classic.dlv_abl.fun 2147483647
scoreboard players set #$.tmp.size.z.min ml.classic.dlv_abl.fun 2147483647


scoreboard players operation #$.tmp.size.x.min ml.classic.dlv_abl.fun < @e[type=block_display,distance=..0.001,tag=tmp] ml.classic.dlv_abl.tail.rdc.x
scoreboard players operation #$.tmp.size.y.min ml.classic.dlv_abl.fun < @e[type=block_display,distance=..0.001,tag=tmp] ml.classic.dlv_abl.tail.rdc.y
scoreboard players operation #$.tmp.size.z.min ml.classic.dlv_abl.fun < @e[type=block_display,distance=..0.001,tag=tmp] ml.classic.dlv_abl.tail.rdc.z

scoreboard players operation #$.tmp.size.x.max ml.classic.dlv_abl.fun > @e[type=block_display,distance=..0.001,tag=tmp] ml.classic.dlv_abl.tail.rdc.x
scoreboard players operation #$.tmp.size.y.max ml.classic.dlv_abl.fun > @e[type=block_display,distance=..0.001,tag=tmp] ml.classic.dlv_abl.tail.rdc.y
scoreboard players operation #$.tmp.size.z.max ml.classic.dlv_abl.fun > @e[type=block_display,distance=..0.001,tag=tmp] ml.classic.dlv_abl.tail.rdc.z

execute on passengers run \
    tag @s remove tmp

# ========================================================================================================================

#declare score_holder #$.tmp.size.x
#declare score_holder #$.tmp.size.y
#declare score_holder #$.tmp.size.z

#declare score_holder #$.tmp.size_max

# ========================================================================================================================

##          DX = X2 - X1

##          DY = Y2 - Y1

##          DZ = Z2 - Z1

scoreboard players operation #$.tmp.size.x ml.classic.dlv_abl.fun = #$.tmp.size.x.max ml.classic.dlv_abl.fun
scoreboard players operation #$.tmp.size.y ml.classic.dlv_abl.fun = #$.tmp.size.y.max ml.classic.dlv_abl.fun
scoreboard players operation #$.tmp.size.z ml.classic.dlv_abl.fun = #$.tmp.size.z.max ml.classic.dlv_abl.fun

scoreboard players operation #$.tmp.size.x ml.classic.dlv_abl.fun -= #$.tmp.size.x.min ml.classic.dlv_abl.fun
scoreboard players operation #$.tmp.size.y ml.classic.dlv_abl.fun -= #$.tmp.size.y.min ml.classic.dlv_abl.fun
scoreboard players operation #$.tmp.size.z ml.classic.dlv_abl.fun -= #$.tmp.size.z.min ml.classic.dlv_abl.fun

scoreboard players operation #$.tmp.size_sum.x ml.classic.dlv_abl.fun = #$.tmp.size.x.max ml.classic.dlv_abl.fun
scoreboard players operation #$.tmp.size_sum.y ml.classic.dlv_abl.fun = #$.tmp.size.y.max ml.classic.dlv_abl.fun
scoreboard players operation #$.tmp.size_sum.z ml.classic.dlv_abl.fun = #$.tmp.size.z.max ml.classic.dlv_abl.fun

scoreboard players operation #$.tmp.size_sum.x ml.classic.dlv_abl.fun += #$.tmp.size.x.min ml.classic.dlv_abl.fun
scoreboard players operation #$.tmp.size_sum.y ml.classic.dlv_abl.fun += #$.tmp.size.y.min ml.classic.dlv_abl.fun
scoreboard players operation #$.tmp.size_sum.z ml.classic.dlv_abl.fun += #$.tmp.size.z.min ml.classic.dlv_abl.fun


scoreboard players add #$.tmp.size.x ml.classic.dlv_abl.fun 1
scoreboard players add #$.tmp.size.y ml.classic.dlv_abl.fun 1
scoreboard players add #$.tmp.size.z ml.classic.dlv_abl.fun 1

# ========================================================================================================================

#declare score_holder ##.float(0.000000001,{0.25})
#declare score_holder #$.block_scale.float(0.000000001,{0.25*MAX(DX,DY,DZ)})

# ========================================================================================================================

scoreboard players set #$.tmp.size_max ml.classic.dlv_abl.fun -2147483648

# ========================================================================================================================

##          BLOCK_SCALE = 0.25 / MAX(DX, DY, DZ)

scoreboard players operation #$.tmp.size_max ml.classic.dlv_abl.fun > #$.tmp.size.x ml.classic.dlv_abl.fun
scoreboard players operation #$.tmp.size_max ml.classic.dlv_abl.fun > #$.tmp.size.y ml.classic.dlv_abl.fun
scoreboard players operation #$.tmp.size_max ml.classic.dlv_abl.fun > #$.tmp.size.z ml.classic.dlv_abl.fun


scoreboard players set ##.float(0.000000001,{0.25}) ml.classic.dlv_abl.fun 0250000000

scoreboard players operation ##.float(0.000000001,{0.25}) ml.classic.dlv_abl.fun /= #$.tmp.size_max ml.classic.dlv_abl.fun 
scoreboard players operation #$.block_scale.float(0.000000001,{0.25*MAX(DX,DY,DZ)}) ml.classic.dlv_abl.fun = ##.float(0.000000001,{0.25}) ml.classic.dlv_abl.fun


data modify storage ca: tmp_2 set value {block_scale:0.0f}

execute store result storage ca: tmp_2.block_scale float 0.000000001 run \
    scoreboard players get #$.block_scale.float(0.000000001,{0.25*MAX(DX,DY,DZ)}) ml.classic.dlv_abl.fun

# ========================================================================================================================

#declare score_holder #$.translation.x.float(0.1,{DX*2})
#declare score_holder #$.translation.y.float(0.1,{DY*2})
#declare score_holder #$.translation.z.float(0.1,{DZ*2})
#declare score_holder ##.float(0.1,{5})

# ========================================================================================================================

##          TRANSLATION[] = BOX[] / 2

scoreboard players set ##.float(0.1,{5}) ml.classic.dlv_abl.fun 5

scoreboard players operation #$.translation.x.float(0.1,{DX*2}) ml.classic.dlv_abl.fun = #$.tmp.size_sum.x ml.classic.dlv_abl.fun
scoreboard players operation #$.translation.y.float(0.1,{DY*2}) ml.classic.dlv_abl.fun = #$.tmp.size_sum.y ml.classic.dlv_abl.fun
scoreboard players operation #$.translation.z.float(0.1,{DZ*2}) ml.classic.dlv_abl.fun = #$.tmp.size_sum.z ml.classic.dlv_abl.fun

scoreboard players add #$.translation.x.float(0.1,{DX*2}) ml.classic.dlv_abl.fun 1
scoreboard players add #$.translation.y.float(0.1,{DY*2}) ml.classic.dlv_abl.fun 1
scoreboard players add #$.translation.z.float(0.1,{DZ*2}) ml.classic.dlv_abl.fun 1

scoreboard players operation #$.translation.x.float(0.1,{DX*2}) ml.classic.dlv_abl.fun *= ##.float(0.1,{5}) ml.classic.dlv_abl.fun
scoreboard players operation #$.translation.y.float(0.1,{DY*2}) ml.classic.dlv_abl.fun *= ##.float(0.1,{5}) ml.classic.dlv_abl.fun
scoreboard players operation #$.translation.z.float(0.1,{DZ*2}) ml.classic.dlv_abl.fun *= ##.float(0.1,{5}) ml.classic.dlv_abl.fun

# ========================================================================================================================

#declare score_holder ##.float(0.1,{10})

# ========================================================================================================================

scoreboard players set ##.float(0.1,{10}) ml.classic.dlv_abl.fun 10

execute on passengers run \
    function ml:classic/dvg_abl/fun/display_stack/tail/z/move/member_4

# ========================================================================================================================
