
# =========================================================================================================================

execute on passengers if entity @s[tag=previous.selected_face] run function ca:dvg_abl/method/cage/update_all_faces/update_face
execute on passengers if entity @s[tag=select.face] run data modify entity @s {} merge from storage ca:ram stack[-1].entity_nbt

execute on passengers run tag @s remove previous.selected_face

execute if data storage ca:ram stack[-1].facing{direction:"south"} on passengers run tag @s[tag=face.north] add previous.selected_face
execute if data storage ca:ram stack[-1].facing{direction:"north"} on passengers run tag @s[tag=face.south] add previous.selected_face
execute if data storage ca:ram stack[-1].facing{direction:"west"} on passengers run tag @s[tag=face.east] add previous.selected_face
execute if data storage ca:ram stack[-1].facing{direction:"east"} on passengers run tag @s[tag=face.west] add previous.selected_face
execute if data storage ca:ram stack[-1].facing{direction:"down"} on passengers run tag @s[tag=face.up] add previous.selected_face
execute if data storage ca:ram stack[-1].facing{direction:"up"} on passengers run tag @s[tag=face.down] add previous.selected_face

execute on passengers if entity @s[tag=previous.selected_face] run function ca:dvg_abl/method/cage/update_selected_face/as_new_selected_face

# =========================================================================================================================
