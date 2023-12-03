
function ml:gnr/method/get/uuid

data modify storage ca:dvg_abl/tmp object.mount set from storage ca: output.uuid

ride @a[tag=tmp,limit=1] mount @s

