
# =========================================================================================================================

function ca:gnr_lay/new/ext

# =========================================================================================================================

function ca:dvg_abl/get/reference_list

function ca:dvg_abl/instance/destructor/kill with storage ca:ram stack[-1].reference_list

# =========================================================================================================================

function ca:dvg_abl/instance/del/reference_list

scoreboard players reset @s ca.dvg_abl.fun

function ca:gnr_lay/delete/ext

# =========================================================================================================================
