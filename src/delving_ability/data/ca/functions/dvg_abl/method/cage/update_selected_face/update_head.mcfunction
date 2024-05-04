

# =========================================================================================================================

execute if entity @s[tag=dvg_abl.member.start] run return fail
execute if score @s ca.dvg_abl.tail.member matches 1.. run return fail

# =========================================================================================================================

function ca:gnr_lay/new/int

    function ca:dvg_abl/instance/method/private/tail_resize/as_head

    data modify entity @s {} merge from storage ca:ram stack[-1]

function ca:gnr_lay/delete/int

# =========================================================================================================================
