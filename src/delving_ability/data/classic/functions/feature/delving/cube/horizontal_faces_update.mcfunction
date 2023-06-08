
## change faces if FACING_NORTH is true & was checked
execute if entity @s[tag=!facing.north,y_rotation=135..-135] run function classic:feature/delving/cube/facing/north

## change faces if FACING_SOUTH is true & was checked
execute if entity @s[tag=!facing.south,y_rotation=-45..45] run function classic:feature/delving/cube/facing/south

## change faces if FACING_WEST is true & was checked
execute if entity @s[tag=!facing.west,y_rotation=45..135] run function classic:feature/delving/cube/facing/west

## change faces if FACING_EAST is true & was checked
execute if entity @s[tag=!facing.east,y_rotation=-135..-45] run function classic:feature/delving/cube/facing/east
