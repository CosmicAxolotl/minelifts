
# =========================================================================================================================

function ca:gnr_lay/new/int

# =========================================================================================================================

function ca:gnr/get_uuid
    data modify storage ca:ram stack[-1].reference_list.player set from storage ca:ram stack[-1].uuid


execute summon item_display run function ca:gnr/get_uuid
    data modify storage ca:ram stack[-1].reference_list.vehicle set from storage ca:ram stack[-1].uuid


execute unless predicate ca:gnr/input/sprint summon item_display if function ca:dvg_abl/instance/constructor/cage run function ca:gnr/get_uuid
    execute unless predicate ca:gnr/input/sprint run data modify storage ca:ram stack[-1].reference_list.cage set from storage ca:ram stack[-1].uuid
    execute if predicate ca:gnr/input/sprint run data modify storage ca:ram stack[-1].reference_list.cage set value "0-0-0-0-0"


execute unless predicate ca:gnr/input/sprint summon item_display if function ca:dvg_abl/instance/constructor/tail run function ca:gnr/get_uuid
    execute unless predicate ca:gnr/input/sprint run data modify storage ca:ram stack[-1].reference_list.tail set from storage ca:ram stack[-1].uuid
    execute if predicate ca:gnr/input/sprint run data modify storage ca:ram stack[-1].reference_list.tail set value "0-0-0-0-0"


# =========================================================================================================================

execute if predicate ca:gnr/input/sprint run function ca:dvg_abl/instance/method/private/tail_resize with storage ca:ram stack[-1].reference_list

function ca:dvg_abl/instance/constructor/ride with storage ca:ram stack[-1].reference_list

data remove storage ca:ram stack[-1].uuid
data modify storage ca:ram stack[-2] merge from storage ca:ram stack[-1]

# =========================================================================================================================

function ca:gnr_lay/delete/int

# =========================================================================================================================
