
# =========================================================================================================================

function ca:gnr_lay/new/ext

# =========================================================================================================================

execute store result storage ca:ram stack[-1].pivot_pos.x int 1 run scoreboard players get @s ca.dvg_abl.tail.rdc.x
execute store result storage ca:ram stack[-1].pivot_pos.y int 1 run scoreboard players get @s ca.dvg_abl.tail.rdc.y
execute store result storage ca:ram stack[-1].pivot_pos.z int 1 run scoreboard players get @s ca.dvg_abl.tail.rdc.z

    function ca:dvg_abl/method/pivot/resonance/at_pivot with storage ca:ram stack[-1].pivot_pos 

# =========================================================================================================================

execute store result score @s ca.dvg_abl.resonance.south run data get storage ca:ram stack[-1].resonance.south
execute store result score @s ca.dvg_abl.resonance.north run data get storage ca:ram stack[-1].resonance.north
execute store result score @s ca.dvg_abl.resonance.west run data get storage ca:ram stack[-1].resonance.west
execute store result score @s ca.dvg_abl.resonance.east run data get storage ca:ram stack[-1].resonance.east
execute store result score @s ca.dvg_abl.resonance.down run data get storage ca:ram stack[-1].resonance.down
execute store result score @s ca.dvg_abl.resonance.up run data get storage ca:ram stack[-1].resonance.up

# =========================================================================================================================

function ca:dvg_abl/get/reference_list
    function ca:dvg_abl/method/cage/update_all_faces with storage ca:ram stack[-1].reference_list
    function ca:dvg_abl/method/cage/update_selected_face with storage ca:ram stack[-1].reference_list

# =========================================================================================================================

function ca:gnr_lay/delete/ext

# =========================================================================================================================
