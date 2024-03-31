
# =========================================================================================================================

function ca:gnr_lay/new/int

# =========================================================================================================================

$tag $(tail) add tmp

# =========================================================================================================================

scoreboard players set #$move.x ml.fun.gnr 0
scoreboard players set #$move.y ml.fun.gnr 0
scoreboard players set #$move.z ml.fun.gnr 0

execute if data storage ca:ram protected_stack[-1][-1].move{direction:"south"} run scoreboard players set #$move.z ml.fun.gnr 1
execute if data storage ca:ram protected_stack[-1][-1].move{direction:"north"} run scoreboard players set #$move.z ml.fun.gnr 1
execute if data storage ca:ram protected_stack[-1][-1].move{direction:"east"} run scoreboard players set #$move.z ml.fun.gnr 1
execute if data storage ca:ram protected_stack[-1][-1].move{direction:"west"} run scoreboard players set #$move.z ml.fun.gnr 1
execute if data storage ca:ram protected_stack[-1][-1].move{direction:"down"} run scoreboard players set #$move.z ml.fun.gnr 1
execute if data storage ca:ram protected_stack[-1][-1].move{direction:"up"} run scoreboard players set #$move.z ml.fun.gnr 1

# =========================================================================================================================

