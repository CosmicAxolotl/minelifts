
# =========================================================================================================================

scoreboard players set @s ca.dvg_abl.cooldown 2

execute store result storage ca:ram stack[-1].direction.south int 1 run scoreboard players get @s ca.dvg_abl.resonance.south
execute store result storage ca:ram stack[-1].direction.north int 1 run scoreboard players get @s ca.dvg_abl.resonance.north
execute store result storage ca:ram stack[-1].direction.west int 1 run scoreboard players get @s ca.dvg_abl.resonance.west
execute store result storage ca:ram stack[-1].direction.east int 1 run scoreboard players get @s ca.dvg_abl.resonance.east
execute store result storage ca:ram stack[-1].direction.down int 1 run scoreboard players get @s ca.dvg_abl.resonance.down
execute store result storage ca:ram stack[-1].direction.up int 1 run scoreboard players get @s ca.dvg_abl.resonance.up


function ca:dvg_abl/get/reference_list
    function ca:dvg_abl/method/cage/update_selected_face with storage ca:ram stack[-1].reference_list


data modify storage \
    ca:ram stack[-1].step_vector set value [I;0,0,0]

execute if entity \
    @s[tag=dvg_abl.facing.up] run \
        function ca:dvg_abl/actions/digging/private/direction/up
execute if entity \
    @s[tag=dvg_abl.facing.down] run \
        function ca:dvg_abl/actions/digging/private/direction/down

execute if entity \
    @s[tag=dvg_abl.facing.south] run \
        function ca:dvg_abl/actions/digging/private/direction/south
execute if entity \
    @s[tag=!dvg.facing.up,tag=!dvg.facing.down,tag=dvg_abl.facing.north] run \
        function ca:dvg_abl/actions/digging/private/direction/north
execute if entity \
    @s[tag=!dvg.facing.up,tag=!dvg.facing.down,tag=dvg_abl.facing.west] run \
        function ca:dvg_abl/actions/digging/private/direction/west
execute if entity \
    @s[tag=!dvg.facing.up,tag=!dvg.facing.down,tag=dvg_abl.facing.east] run \
        function ca:dvg_abl/actions/digging/private/direction/east

execute if score \
    #$steps ca.dvg_abl.fun matches -1 run \
        function ca:dvg_abl/action/display/fail
execute if score \
    #$steps ca.dvg_abl.fun matches 1 run \
        function ca:dvg_abl/action/display/emerge

execute unless score \
    #$steps ca.dvg_abl.fun matches -1..1 \
    if entity @s[tag=!dvg_abl.quick_modifier] run \
        function ca:dvg_abl/actions/digging/type/short
execute unless score \
    #$steps ca.dvg_abl.fun matches -1..1 \
    if entity @s[tag=dvg_abl.quick_modifier] run \
        function ca:dvg_abl/actions/digging/type/quick

# =========================================================================================================================
