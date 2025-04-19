
#execute if entity @s[tag=!dvg_abl] run return fail


function ca:gnr_lay/new/int

execute if entity @s[tag=dvg_abl.peeking] \
    unless function ca:dvg_abl/actions/peeking run \
    return run function ca:gnr_lay/delete/int

function ca:dvg_abl/actions/digging

function ca:gnr_lay/delete/int

