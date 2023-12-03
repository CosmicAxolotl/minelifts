
# ========================================================================================================================

function ml:classic/dvg_abl/new/display_stack/move_cage

data modify storage ca:dvg_abl/tmp object.move_cage set from storage ca: output.uuid

# ========================================================================================================================

function ml:classic/dvg_abl/new/display_stack/tail
data modify storage ca:dvg_abl/tmp object.tail set from storage ca: output.uuid

# ========================================================================================================================

execute summon interaction run function ml:classic/dvg_abl/new/z/instance/interaction_south
execute summon interaction run function ml:classic/dvg_abl/new/z/instance/interaction_north
execute summon interaction run function ml:classic/dvg_abl/new/z/instance/interaction_west
execute summon interaction run function ml:classic/dvg_abl/new/z/instance/interaction_east
execute summon interaction run function ml:classic/dvg_abl/new/z/instance/interaction_up
execute summon interaction run function ml:classic/dvg_abl/new/z/instance/interaction_down

# ========================================================================================================================

tag @s add tmp
execute summon block_display run function ml:classic/dvg_abl/new/z/instance/member_1 
tag @s remove tmp

function ml:gnr/method/get/uuid
data modify storage ca:dvg_abl/tmp object.player set from storage ca: output.uuid

function ml:classic/dvg_abl/new/z/instance with storage ca: output

function ml:classic/dvg_abl/fun/display_stack/move_cage/update
function ml:classic/dvg_abl/fun/interaction/update_pos

# ========================================================================================================================
