
# ========================================================================================================================

$execute at @s anchored eyes positioned ^-0.7 ^-0.2 ^1 run tp $(tail) ~ ~ ~

$execute at @s anchored eyes positioned ^ ^ ^1.25 run tp $(move_cage) ~ ~ ~

# ========================================================================================================================

function ml:classic/dvg_abl/method/instance/z/move
function ml:classic/dvg_abl/method/instance/z/main/member_2

execute if entity @s[tag=!changed.selected_face] run return 0
$execute as $(move_cage) on passengers if entity @s[tag=select.face] run function ml:classic/dvg_abl/method/instance/z/main/member_1

tag @s remove changed.selected_face

# ========================================================================================================================
