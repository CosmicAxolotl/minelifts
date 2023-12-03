
tag @s remove previously_selected_face

execute if score #.$condition ml.classic.dlv_abl.fun matches 1


execute if entity @s[tag=face.north] run data modify entity @s text set value '{"score":{"objective":"ml.classic.dlv_abl.fun","name":"#$.tmp.face.north"}}'
execute if entity @s[tag=face.south] run data modify entity @s text set value '{"score":{"objective":"ml.classic.dlv_abl.fun","name":"#$.tmp.face.south"}}'
execute if entity @s[tag=face.east] run data modify entity @s text set value '{"score":{"objective":"ml.classic.dlv_abl.fun","name":"#$.tmp.face.west"}}'
execute if entity @s[tag=face.west] run data modify entity @s text set value '{"score":{"objective":"ml.classic.dlv_abl.fun","name":"#$.tmp.face.east"}}'
execute if entity @s[tag=face.down] run data modify entity @s text set value '{"score":{"objective":"ml.classic.dlv_abl.fun","name":"#$.tmp.face.up"}}'
execute if entity @s[tag=face.up] run data modify entity @s text set value '{"score":{"objective":"ml.classic.dlv_abl.fun","name":"#$.tmp.face.down"}}'

scoreboard players set #.$condition ml.classic.dlv_abl.fun 0
