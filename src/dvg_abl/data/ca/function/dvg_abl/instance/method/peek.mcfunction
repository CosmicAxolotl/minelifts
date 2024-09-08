
# =========================================================================================================================

function ca:gnr_lay/new/int

# =========================================================================================================================

$execute as $(cage) on passengers run data modify entity @s view_range set value 0.0f
$execute as $(cage) run data modify entity @s view_range set value 0.0f

$execute as $(tail) on passengers run data modify entity @s view_range set value 0.0f
$execute as $(tail) run data modify entity @s view_range set value 0.0f

execute store result storage ca:ram stack[-1].pivot.x int 1 run scoreboard players get @s ca.dvg_abl.tail.rdc.x
execute store result storage ca:ram stack[-1].pivot.y int 1 run scoreboard players get @s ca.dvg_abl.tail.rdc.y
execute store result storage ca:ram stack[-1].pivot.z int 1 run scoreboard players get @s ca.dvg_abl.tail.rdc.z
    execute on vehicle run function ca:dvg_abl/instance/method/peek/vehicle with storage ca:ram stack[-1].pivot


execute on vehicle at @s align xyz run tp @s ~0.5 ~0.5 ~0.5
    execute if entity @s[tag=dvg_abl.facing.south] on vehicle at @s run tp @s ~ ~-0.95 ~0.85 0 0
    execute if entity @s[tag=dvg_abl.facing.north] on vehicle at @s run tp @s ~ ~-0.95 ~-0.85 180 0
    execute if entity @s[tag=dvg_abl.facing.east] on vehicle at @s run tp @s ~0.8 ~-0.95 ~ -90 0
    execute if entity @s[tag=dvg_abl.facing.west] on vehicle at @s run tp @s ~-0.8 ~-0.95 ~ 90 0
    execute if entity @s[tag=dvg_abl.facing.down] on vehicle at @s run tp @s ~ ~-1.75 ~ 0 90
    execute if entity @s[tag=dvg_abl.facing.up] on vehicle at @s run tp @s ~ ~-0.25 ~ 0 -90

tag @s add dvg_abl.peeking

effect clear @s blindness

# =========================================================================================================================

function ca:gnr_lay/delete/int

# =========================================================================================================================
