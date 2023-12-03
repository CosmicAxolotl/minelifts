


function ml:gnr/method/get/uuid
function ml:classic/dvg_abl/method/get/instance/reference_list with storage ca: output



execute if entity @s[advancements={ml:classic/dvl_abl/interaction={short_dig=true}}] run \
    function ml:classic/dvg_abl/fun/z/move/change_gui



execute if entity @s[advancements={ml:classic/dvl_abl/interaction={quick_dig=true}}] run \
    function ml:classic/dvg_abl/fun/z/move/quick_dig with storage ca:dvg_abl/ reference_list


advancement revoke @s only ml:classic/dvl_abl/interaction



