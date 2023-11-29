
# ========================================================================================================================

function ml:classic/dvg_abl/new/display_stack/move_cage

data modify storage ca:dvg_abl/tmp object.move_cage set from storage ca: output.uuid

# ========================================================================================================================

function ml:classic/dvg_abl/new/display_stack/tail
data modify storage ca:dvg_abl/tmp object.tail set from storage ca: output.uuid

# ========================================================================================================================

function ml:gnr/method/get/uuid
data modify storage ca:dvg_abl/tmp object.player set from storage ca: output.uuid

function ml:classic/dvg_abl/new/z/instance with storage ca: output

# ========================================================================================================================
