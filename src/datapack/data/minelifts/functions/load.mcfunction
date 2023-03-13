
# Add objectives

scoreboard objectives add ml.registry trigger
scoreboard objectives add ml.rom trigger
scoreboard objectives add ml.ram trigger


# Module manager

## get count of total valid modules

execute unless score int.dlc.registered ml.rom = int.dlc.registered ml.rom run scoreboard players set int.dlc.registered rom 0
scoreboard players set int.dlc.count ml.ram 0
function #minelifts:dlc/get_count


## reinstall modules if the count is different from before

scoreboard players set int.current_top ml.registry -1
execute unless score int.dlc.registered ml.rom = int.dlc.count ml.ram run data modify storage ml:rom modules set value []
execute unless score int.dlc.registered ml.rom = int.dlc.count ml.ram run function #minelifts:dlc/install
