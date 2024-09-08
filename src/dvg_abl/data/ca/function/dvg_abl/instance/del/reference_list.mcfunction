
# =========================================================================================================================

function ca:gnr_lay/new/int

# =========================================================================================================================

execute store result storage ca:ram stack[-1].uuid.0 int 1 run scoreboard players get @s ml.gnr.uuid_cache.0
execute store result storage ca:ram stack[-1].uuid.1 int 1 run scoreboard players get @s ml.gnr.uuid_cache.1
execute store result storage ca:ram stack[-1].uuid.2 int 1 run scoreboard players get @s ml.gnr.uuid_cache.2
execute store result storage ca:ram stack[-1].uuid.3 int 1 run scoreboard players get @s ml.gnr.uuid_cache.3

function ca:dvg_abl/instance/del/z/reference_list with storage ca:ram stack[-1].uuid

# =========================================================================================================================

function ca:gnr_lay/delete/int

# =========================================================================================================================
