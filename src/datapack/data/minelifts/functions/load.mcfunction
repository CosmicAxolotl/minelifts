
# load mspt task
function minelifts:task/mspt
scoreboard players set #49999000 ml.rom 49999000

# Add objectives
scoreboard objectives add ml.registry trigger
scoreboard objectives add ml.rom trigger
scoreboard objectives add ml.ram trigger


# set world spawn to 0, 0
setworldspawn 0 -64 0 0


# reload object trees roots
## remove all objects trees & childrens
kill @e[type=area_effect_cloud,tag=object]
kill @e[type=marker,tag=object]

## make entity object tree root
summon area_effect_cloud 0 -64 0 { UUID : [I; 15, 15, 32, 1] , CustomName : '"entity.root"' , Tags : [ "ml.core" , "object" , "tree.root"] , Age : -2147483648 , Duration : -1 , WaitTime : -2147483648 }

## make module object tree root
summon area_effect_cloud 0 -64 0 { UUID : [I; 15, 15, 32, 2 ] , CustomName : '"module.root"' , Tags : [ "ml.core" , "object" , "tree.root" ] , Age : -2147483648 , Duration : -1 , WaitTime : -2147483648 }


# Module manager
## get count of total valid modules
execute unless score int.dlc.registered ml.rom = int.dlc.registered ml.rom run scoreboard players set int.dlc.registered rom 0
scoreboard players set int.dlc.count ml.ram 0
function #minelifts:dlc/get_count

## reinstall modules if the count is different from before
scoreboard players set int.current_top ml.registry -1
execute unless score int.dlc.registered ml.rom = int.dlc.count ml.ram run data modify storage ml:rom modules set value []
execute unless score int.dlc.registered ml.rom = int.dlc.count ml.ram run function #minelifts:dlc/install
