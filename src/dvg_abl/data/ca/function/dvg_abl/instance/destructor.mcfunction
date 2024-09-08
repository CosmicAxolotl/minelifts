
# =========================================================================================================================

function ca:gnr_lay/new/ext

# =========================================================================================================================

function ca:dvg_abl/get/reference_list
    function ca:dvg_abl/instance/destructor/kill with storage ca:ram stack[-1].reference_list


function ca:dvg_abl/instance/del/reference_list

# =========================================================================================================================

effect clear @s minecraft:blindness
effect clear @s minecraft:invisibility

tag @s remove dvg_abl.facing.sotuh
tag @s remove dvg_abl.facing.north
tag @s remove dvg_abl.facing.east
tag @s remove dvg_abl.facing.west
tag @s remove dvg_abl.facing.down
tag @s remove dvg_abl.facing.up

tag @s remove dvg_abl
tag @s remove dvg_abl.peeking

scoreboard players reset @s ca.dvg_abl.fun

function ca:gnr_lay/delete/ext

# =========================================================================================================================
