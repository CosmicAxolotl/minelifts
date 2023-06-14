
# as PLAYER
execute if entity @s[tag=emerge.north] on vehicle on vehicle run tp ~ ~-1.645 ~-0.8
execute if entity @s[tag=emerge.south] on vehicle on vehicle run tp ~ ~-1.645 ~0.8
execute if entity @s[tag=emerge.west] on vehicle on vehicle run tp ~-0.8 ~-1.645 ~
execute if entity @s[tag=emerge.east] on vehicle on vehicle run tp ~0.8 ~-1.645 ~
execute if entity @s[tag=emerge.up] on vehicle on vehicle run tp ~ ~-1.045 ~
execute if entity @s[tag=emerge.down] on vehicle on vehicle run tp ~ ~-2.245 ~

# set DISPLAY_STACK elements' view_range to 0.0f
execute on vehicle on origin on vehicle on passengers run data modify entity @s[type=!villager] view_range set value 0.0f
execute on vehicle on origin on vehicle run tp @s ~ ~-0.5 ~