
execute store success score #.$condition ml.classic.dlv_abl.fun if entity @s[tag=ml.classic.dlv_abl.gui.option.gui.move_cage]

execute if score #.$condition ml.classic.dlv_abl.fun matches 1 run tag @s remove ml.classic.dlv_abl.gui.option.gui.move_cage
execute if score #.$condition ml.classic.dlv_abl.fun matches 1 run tag @s add ml.classic.dlv_abl.gui.option.gui.tail

execute if score #.$condition ml.classic.dlv_abl.fun matches 0 run tag @s remove ml.classic.dlv_abl.gui.option.gui.tail
execute if score #.$condition ml.classic.dlv_abl.fun matches 0 run tag @s add ml.classic.dlv_abl.gui.option.gui.move_cage
