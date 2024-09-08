
# =========================================================================================================================

scoreboard objectives add ml.core.fun trigger
scoreboard objectives add ml.fun.gnr trigger

# =========================================================================================================================

#declare storage ca:logs
#declare storage ca:ram

# =========================================================================================================================

scoreboard players set #$tick ml.core.fun 0

# =========================================================================================================================

data modify storage ca:ram protected_stack set value []
data modify storage ca:ram stack set value [{log_entry:{function:"ca:ml/core/load",type:"MARK",msg:"Reloading ml-core!"}}]

data modify storage ca:logs logs append from storage ca:logs latest_log
data modify storage ca:logs latest_log set value []

# =========================================================================================================================

## Send first log of the run
function ca:ml/core/log/generate_entry

# =========================================================================================================================

execute if data storage ca:ml_core operations[] run function ca:ml/core/load/parse_ops

# =========================================================================================================================

data remove storage ca:ram stack[-1]

# =========================================================================================================================

function ca:ml/core/main

# =========================================================================================================================


