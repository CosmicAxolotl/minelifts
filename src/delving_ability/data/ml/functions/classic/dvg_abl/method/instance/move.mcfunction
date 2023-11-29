
# ========================================================================================================================

function ml:gnr/method/get/uuid
function ml:classic/dvg_abl/method/get/instance/reference_list with storage ca: output

$data modify storage ca: tmp set value {steps:$(steps)}

function ml:classic/dvg_abl/method/instance/z/move

function ml:classic/dvg_abl/method/instance/z/move_2 with storage ca:dvg_abl/ reference_list

# ========================================================================================================================
