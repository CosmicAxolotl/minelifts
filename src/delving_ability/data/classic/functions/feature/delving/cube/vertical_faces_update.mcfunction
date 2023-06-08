
## change faces if FACING_UP is true & was checked
execute if entity @s[tag=!facing.up,x_rotation=-90..-45] run function classic:feature/delving/cube/facing/up

## change faces if FACING_DOWN is true & was checked
execute if entity @s[tag=!facing.down,x_rotation=-45..90] run function classic:feature/delving/cube/facing/down
