
# =========================================================================================================================

function ca:gnr_lay/new/ext

# =========================================================================================================================

data modify storage ca:ram stack[-1] merge value {log_entry:{function:"ca:dvg_abl/new/instance",type:"ERROR",msg:"The targeted entity is not a player!"}}
execute if entity @s[type=!minecraft:player] if function ca:ml/core/log/generate_entry run return run function ca:gnr_lay/delete/ext

data modify storage ca:ram stack[-1] merge value {log_entry:{function:"ca:dvg_abl/new/instance",type:"ERROR",msg:"The player doesn't met the conditions to start an instance of Delving Ability!"}}
execute unless function ca:dvg_abl/check if function ca:ml/core/log/generate_entry run return run function ca:gnr_lay/delete/ext

# =========================================================================================================================

function ca:dvg_abl/instance/constructor

# =========================================================================================================================

execute store result storage ca:ram stack[-1].storage.0 int 1 run scoreboard players get @s ml.gnr.uuid_cache.0
execute store result storage ca:ram stack[-1].storage.1 int 1 run scoreboard players get @s ml.gnr.uuid_cache.1
execute store result storage ca:ram stack[-1].storage.2 int 1 run scoreboard players get @s ml.gnr.uuid_cache.2
execute store result storage ca:ram stack[-1].storage.3 int 1 run scoreboard players get @s ml.gnr.uuid_cache.3

function ca:dvg_abl/new/instance/store_list with storage ca:ram stack[-1].storage

# =========================================================================================================================

function ca:gnr_lay/delete/ext

# =========================================================================================================================
