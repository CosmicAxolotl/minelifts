
# ========================================================================================================================

function ml:gnr/method/get/uuid
function ml:classic/dvg_abl/method/get/instance/reference_list with storage ca: output

# ========================================================================================================================

execute if entity @s[predicate=!ml:gnr/has_vehicle] run \
    function ml:classic/dvg_abl/fun/z/move/short_dig with storage ca:dvg_abl/ reference_list


execute if entity @s[tag=ml.classic.dlv_abl.gui.option.gui.tail] run function ml:classic/dvg_abl/method/instance/z/main_3 with storage ca:dvg_abl/ reference_list
execute if entity @s[tag=ml.classic.dlv_abl.gui.option.gui.move_cage] run function ml:classic/dvg_abl/method/instance/z/main_4 with storage ca:dvg_abl/ reference_list


function ml:classic/dvg_abl/method/instance/z/main with storage ca:dvg_abl/ reference_list

# ========================================================================================================================
