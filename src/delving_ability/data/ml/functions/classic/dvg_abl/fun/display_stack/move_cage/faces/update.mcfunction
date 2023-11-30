
# ========================================================================================================================

function ml:gnr/method/get/uuid
function ml:classic/dvg_abl/method/get/instance/reference_list with storage ca: output

# ========================================================================================================================

function ml:classic/dvg_abl/method/instance/z/move

# ========================================================================================================================

execute if data storage ca: tmp{move:"all"} run function ml:classic/dvg_abl/fun/display_stack/move_cage/faces/z/update/all
execute if data storage ca: tmp{move:"all"} run return 0

# ========================================================================================================================

execute if data storage ca: tmp{move:"south"} run function ml:classic/dvg_abl/fun/display_stack/move_cage/faces/z/update/south
execute if data storage ca: tmp{move:"north"} run function ml:classic/dvg_abl/fun/display_stack/move_cage/faces/z/update/north
execute if data storage ca: tmp{move:"west"} run function ml:classic/dvg_abl/fun/display_stack/move_cage/faces/z/update/west
execute if data storage ca: tmp{move:"east"} run function ml:classic/dvg_abl/fun/display_stack/move_cage/faces/z/update/east
execute if data storage ca: tmp{move:"up"} run function ml:classic/dvg_abl/fun/display_stack/move_cage/faces/z/update/up
execute if data storage ca: tmp{move:"down"} run function ml:classic/dvg_abl/fun/display_stack/move_cage/faces/z/update/down

# ========================================================================================================================
