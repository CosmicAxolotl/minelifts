
advancement revoke @s only classic:feature/delving/interact

# guard-statement
execute if score @s delving.cooldown matches 1.. run return 0

execute if entity @s[tag=hit_wall] run return 0

function classic:feature/delving/cube/get_numbers
tag @s add movement.quick

execute if entity @s[tag=facing.north] run function classic:feature/delving/movement/dig/north
execute if entity @s[tag=facing.south] run function classic:feature/delving/movement/dig/south
execute if entity @s[tag=facing.west] run function classic:feature/delving/movement/dig/west
execute if entity @s[tag=facing.east] run function classic:feature/delving/movement/dig/east
execute if entity @s[tag=facing.up] run function classic:feature/delving/movement/dig/up
execute if entity @s[tag=facing.down] run function classic:feature/delving/movement/dig/down

scoreboard players remove @s[tag=!hit_wall,tag=!emerge] delving.cooldown 3

tag @s remove hit_wall
