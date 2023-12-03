

data merge entity @s {Tags:["dvl_abl.interaction"],height:0.5f,width:0.5f}

function ml:gnr/method/get/uuid
data modify storage ca:dvg_abl/tmp object.interaction_north set from storage ca: output.uuid

