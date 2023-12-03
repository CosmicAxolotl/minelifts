

execute if entity @s[tag=face.north] run scoreboard players operation #$.tmp.face.previous ml.classic.dlv_abl.fun = #$.tmp.face.north ml.classic.dlv_abl.fun
execute if entity @s[tag=face.south] run scoreboard players operation #$.tmp.face.previous ml.classic.dlv_abl.fun = #$.tmp.face.south ml.classic.dlv_abl.fun
execute if entity @s[tag=face.east] run scoreboard players operation #$.tmp.face.previous ml.classic.dlv_abl.fun = #$.tmp.face.west ml.classic.dlv_abl.fun
execute if entity @s[tag=face.west] run scoreboard players operation #$.tmp.face.previous ml.classic.dlv_abl.fun = #$.tmp.face.east ml.classic.dlv_abl.fun
execute if entity @s[tag=face.down] run scoreboard players operation #$.tmp.face.previous ml.classic.dlv_abl.fun = #$.tmp.face.up ml.classic.dlv_abl.fun
execute if entity @s[tag=face.up] run scoreboard players operation #$.tmp.face.previous ml.classic.dlv_abl.fun = #$.tmp.face.down ml.classic.dlv_abl.fun

execute if score #$.tmp.face.previous ml.classic.dlv_abl.fun matches 1 run data modify entity @s text set value '{"text":"↑"}'
execute if score #$.tmp.face.previous ml.classic.dlv_abl.fun matches -1 run data modify entity @s text set value '{"text":"✖"}'
execute if score #$.tmp.face.previous ml.classic.dlv_abl.fun matches 0 run data modify entity @s text set value '{"text":"???","color":"#1F0F1F","obfuscated":true}'

execute if score #$.tmp.face.previous ml.classic.dlv_abl.fun matches -1..1 run scoreboard players set #.$condition ml.classic.dlv_abl.fun 1
execute if score #$.tmp.face.previous ml.classic.dlv_abl.fun matches -1..1 run tag @s remove previously_selected_face

