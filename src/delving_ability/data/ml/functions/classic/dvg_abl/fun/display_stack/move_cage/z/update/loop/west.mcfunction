

execute store success score #.$condition ml.classic.dlv_abl.fun unless block ~ ~ ~ #ml:dvg_abl/travel_blocks 

execute if score #.$condition ml.classic.dlv_abl.fun matches 1 \
    if block ~ ~ ~ #ml:dvg_abl/air \
        unless block ~ ~ ~ light[waterlogged=true] run \
            scoreboard players operation #$.tmp.face.steps ml.classic.dlv_abl.fun *= #-1 ml.classic.dlv_abl.fun

execute if score #.$condition ml.classic.dlv_abl.fun matches 1 run return 0

scoreboard players remove #$.tmp.face.steps ml.classic.dlv_abl.fun 1

execute positioned ~-1 ~ ~ run function ml:classic/dvg_abl/fun/display_stack/move_cage/z/update/loop/west

