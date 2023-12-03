

execute if data storage ca: tmp{move:"south"} run scoreboard players operation #$.tmp.face.steps ml.classic.dlv_abl.fun = @s ml.classic.dlv_abl.move_cage.face.north

execute if data storage ca: tmp{move:"north"} run scoreboard players operation #$.tmp.face.steps ml.classic.dlv_abl.fun = @s ml.classic.dlv_abl.move_cage.face.south

execute if data storage ca: tmp{move:"west"} run scoreboard players operation #$.tmp.face.steps ml.classic.dlv_abl.fun = @s ml.classic.dlv_abl.move_cage.face.east

execute if data storage ca: tmp{move:"east"} run scoreboard players operation #$.tmp.face.steps ml.classic.dlv_abl.fun = @s ml.classic.dlv_abl.move_cage.face.west

execute if data storage ca: tmp{move:"up"} run scoreboard players operation #$.tmp.face.steps ml.classic.dlv_abl.fun = @s ml.classic.dlv_abl.move_cage.face.down

execute if data storage ca: tmp{move:"down"} run scoreboard players operation #$.tmp.face.steps ml.classic.dlv_abl.fun = @s ml.classic.dlv_abl.move_cage.face.up

scoreboard players operation #$.tmp.face.north ml.classic.dlv_abl.fun = @s ml.classic.dlv_abl.move_cage.face.north
scoreboard players operation #$.tmp.face.south ml.classic.dlv_abl.fun = @s ml.classic.dlv_abl.move_cage.face.south
scoreboard players operation #$.tmp.face.east ml.classic.dlv_abl.fun = @s ml.classic.dlv_abl.move_cage.face.west
scoreboard players operation #$.tmp.face.west ml.classic.dlv_abl.fun = @s ml.classic.dlv_abl.move_cage.face.east
scoreboard players operation #$.tmp.face.down ml.classic.dlv_abl.fun = @s ml.classic.dlv_abl.move_cage.face.up
scoreboard players operation #$.tmp.face.up ml.classic.dlv_abl.fun = @s ml.classic.dlv_abl.move_cage.face.down
