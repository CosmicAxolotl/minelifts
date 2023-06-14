
execute store success score quick_dig ml.fun if entity @s[tag=movement.quick]
tag @s remove movement.quick

# Check if
tag @s add tmp

execute if entity @s[tag=can.emerge] if score quick_dig ml.fun matches 1 run function classic:feature/delving/movement/emerge/start
execute if entity @s[tag=can.emerge] run return 0

execute if entity @s[tag=facing.north] on vehicle on origin on passengers on passengers on origin on vehicle at @s run function classic:feature/delving/movement/move_loop/north
execute if entity @s[tag=facing.south] on vehicle on origin on passengers on passengers on origin on vehicle at @s run function classic:feature/delving/movement/move_loop/south
execute if entity @s[tag=facing.west] on vehicle on origin on passengers on passengers on origin on vehicle at @s run function classic:feature/delving/movement/move_loop/west
execute if entity @s[tag=facing.east] on vehicle on origin on passengers on passengers on origin on vehicle at @s run function classic:feature/delving/movement/move_loop/east
execute if entity @s[tag=facing.up] on vehicle on origin on passengers on passengers on origin on vehicle at @s run function classic:feature/delving/movement/move_loop/up
execute if entity @s[tag=facing.down] on vehicle on origin on passengers on passengers on origin on vehicle at @s run function classic:feature/delving/movement/move_loop/down

function classic:feature/delving/movement/resonance

tag @s remove facing.north
tag @s remove facing.south
tag @s remove facing.west
tag @s remove facing.east
tag @s remove facing.up
tag @s remove facing.down

tag @s remove movement.quick
tag @s remove move
tag @s remove tmp
