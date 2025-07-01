
# =========================================================================================================================

function ca:gnr_lay/new/ext

# =========================================================================================================================

execute if function ca:gnr/get_uuid/if_cached run return run function ca:gnr/get_uuid/parse

# =========================================================================================================================

#declare score_holder #$.uuid.0
#declare score_holder #$.uuid.1
#declare score_holder #$.uuid.2
#declare score_holder #$.uuid.3

# =========================================================================================================================

data modify storage ca:ram stack[-1].uuid set from entity @s UUID

# =========================================================================================================================

execute store result score @s ml.gnr.uuid_cache.0 run data get storage ca:ram stack[-1].uuid[0]
execute store result score @s ml.gnr.uuid_cache.1 run data get storage ca:ram stack[-1].uuid[1]
execute store result score @s ml.gnr.uuid_cache.2 run data get storage ca:ram stack[-1].uuid[2]
execute store result score @s ml.gnr.uuid_cache.3 run data get storage ca:ram stack[-1].uuid[3]

# =========================================================================================================================

function ca:gnr/get_uuid/parse

# =========================================================================================================================

