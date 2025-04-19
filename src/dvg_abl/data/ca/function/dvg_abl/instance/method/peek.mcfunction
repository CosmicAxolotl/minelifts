
# =========================================================================================================================

function ca:gnr_lay/new/int

# =========================================================================================================================

$execute as $(cage) on passengers run data modify entity @s view_range set value 0.0f
$execute as $(cage) run data modify entity @s view_range set value 0.0f

$execute as $(tail) on passengers run data modify entity @s view_range set value 0.0f
$execute as $(tail) run data modify entity @s view_range set value 0.0f

execute store result storage ca:ram stack[-1].pivot.x int 1 run \
    scoreboard players get @s ca.dvg_abl.tail.rdc.x
execute store result storage ca:ram stack[-1].pivot.y int 1 run \
    scoreboard players get @s ca.dvg_abl.tail.rdc.y
execute store result storage ca:ram stack[-1].pivot.z int 1 run \
    scoreboard players get @s ca.dvg_abl.tail.rdc.z

execute on vehicle run \
    function ca:dvg_abl/instance/method/peek/vehicle with \
        storage ca:ram stack[-1].pivot


execute on vehicle at @s align xyz run tp @s ~0.5 ~0.5 ~0.5
execute on vehicle \
    at @s on passengers rotated as @s run \
        function ca:dvg_abl/instance/method/peek_rotation with \
            storage ca:ram stack[-2].reference_list

tag @s add dvg_abl.peeking
title @s actionbar [{"text":"On cooldown...","color":"white"}]
effect clear @s blindness

# =========================================================================================================================

function ca:gnr_lay/delete/int

# =========================================================================================================================
