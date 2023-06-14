
# set emerge facing for checks
tag @s[tag=facing.north] add emerge.north
tag @s[tag=facing.south] add emerge.south
tag @s[tag=facing.west] add emerge.west
tag @s[tag=facing.east] add emerge.east
tag @s[tag=facing.up] add emerge.up
tag @s[tag=facing.down] add emerge.down

# at DELVING_MARKER as PLAYER
execute on vehicle on origin on passengers on passengers on origin on vehicle at @s as @a[tag=tmp,limit=1] align xyz positioned ~0.5 ~0.5 ~0.5 run function classic:feature/delving/movement/emerge/tp

tag @s remove facing.north
tag @s remove facing.south
tag @s remove facing.west
tag @s remove facing.east
tag @s remove facing.up
tag @s remove facing.down
tag @s remove emerge
tag @s remove can.emerge
tag @s remove move

tag @s remove movement.quick

tag @s remove tmp
