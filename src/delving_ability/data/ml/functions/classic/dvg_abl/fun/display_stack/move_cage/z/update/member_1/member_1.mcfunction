
scoreboard players operation @s ml.classic.dlv_abl.move_cage.face.south = #$.tmp.face.north ml.classic.dlv_abl.fun
scoreboard players operation @s ml.classic.dlv_abl.move_cage.face.north = #$.tmp.face.south ml.classic.dlv_abl.fun
scoreboard players operation @s ml.classic.dlv_abl.move_cage.face.west = #$.tmp.face.east ml.classic.dlv_abl.fun
scoreboard players operation @s ml.classic.dlv_abl.move_cage.face.east = #$.tmp.face.west ml.classic.dlv_abl.fun
scoreboard players operation @s ml.classic.dlv_abl.move_cage.face.up = #$.tmp.face.down ml.classic.dlv_abl.fun
scoreboard players operation @s ml.classic.dlv_abl.move_cage.face.down = #$.tmp.face.up ml.classic.dlv_abl.fun

scoreboard players operation #$.tmp.face.north ml.classic.dlv_abl.fun = @s ml.classic.dlv_abl.move_cage.face.north
scoreboard players operation #$.tmp.face.south ml.classic.dlv_abl.fun = @s ml.classic.dlv_abl.move_cage.face.south
scoreboard players operation #$.tmp.face.east ml.classic.dlv_abl.fun = @s ml.classic.dlv_abl.move_cage.face.west
scoreboard players operation #$.tmp.face.west ml.classic.dlv_abl.fun = @s ml.classic.dlv_abl.move_cage.face.east
scoreboard players operation #$.tmp.face.down ml.classic.dlv_abl.fun = @s ml.classic.dlv_abl.move_cage.face.up
scoreboard players operation #$.tmp.face.up ml.classic.dlv_abl.fun = @s ml.classic.dlv_abl.move_cage.face.down


execute on passengers run function ml:classic/dvg_abl/fun/display_stack/move_cage/z/update/member_1/member_1/member_1
