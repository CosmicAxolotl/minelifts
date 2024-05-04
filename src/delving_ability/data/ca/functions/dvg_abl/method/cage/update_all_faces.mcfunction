
# =========================================================================================================================

function ca:gnr_lay/new/int

data modify storage ca:ram tack[-1].direction set value {south:0,north:0,west:0,east:0,down:0,up:0}
    execute store result storage ca:ram stack[-1].direction.south int 1 run scoreboard players get @s ca.dvg_abl.resonance.south
    execute store result storage ca:ram stack[-1].direction.north int 1 run scoreboard players get @s ca.dvg_abl.resonance.north
    execute store result storage ca:ram stack[-1].direction.west int 1 run scoreboard players get @s ca.dvg_abl.resonance.west
    execute store result storage ca:ram stack[-1].direction.east int 1 run scoreboard players get @s ca.dvg_abl.resonance.east
    execute store result storage ca:ram stack[-1].direction.down int 1 run scoreboard players get @s ca.dvg_abl.resonance.down
    execute store result storage ca:ram stack[-1].direction.up int 1 run scoreboard players get @s ca.dvg_abl.resonance.up

$execute as $(cage) on passengers if entity @s[tag=!not_a_face] run function ca:dvg_abl/method/cage/update_all_faces/update_face

function ca:gnr_lay/delete/int

# =========================================================================================================================
