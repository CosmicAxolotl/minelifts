
execute if entity @s[tag=dvg_abl.facing.south] if data storage ca: tmp{move:"south"} run return 0 
execute if entity @s[tag=dvg_abl.facing.north] if data storage ca: tmp{move:"north"} run return 0 
execute if entity @s[tag=dvg_abl.facing.west] if data storage ca: tmp{move:"west"} run return 0 
execute if entity @s[tag=dvg_abl.facing.east] if data storage ca: tmp{move:"east"} run return 0 
execute if entity @s[tag=dvg_abl.facing.up] if data storage ca: tmp{move:"up"} run return 0 
execute if entity @s[tag=dvg_abl.facing.down] if data storage ca: tmp{move:"down"} run return 0

tag @s add changed.selected_face

tag @s remove dvg_abl.facing.south
tag @s remove dvg_abl.facing.north
tag @s remove dvg_abl.facing.west
tag @s remove dvg_abl.facing.east
tag @s remove dvg_abl.facing.up
tag @s remove dvg_abl.facing.down

execute if data storage ca: tmp{move:"south"} run tag @s add dvg_abl.facing.south
execute if data storage ca: tmp{move:"north"} run tag @s add dvg_abl.facing.north
execute if data storage ca: tmp{move:"west"} run tag @s add dvg_abl.facing.west
execute if data storage ca: tmp{move:"east"} run tag @s add dvg_abl.facing.east
execute if data storage ca: tmp{move:"up"} run tag @s add dvg_abl.facing.up
execute if data storage ca: tmp{move:"down"} run tag @s add dvg_abl.facing.down
