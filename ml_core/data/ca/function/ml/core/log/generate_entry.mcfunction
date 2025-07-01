

# =========================================================================================================================

#declare score_holder #$log.trail.external
#declare score_holder #$log.trail.internal

# =========================================================================================================================

data modify storage ca:ram stack append value {timestamp:0,stack_trail:[I;0,0],function:"",log_type:"NULL",msg:"NULL"}

# =========================================================================================================================

execute store result storage ca:ram stack[-1].timestamp int 1 run scoreboard players get #$tick ml.core.fun
execute store result score #$log.trail.external ml.core.fun if data storage ca:ram protected_stack[]

execute store result score #$log.trail.internal ml.core.fun if data storage ca:ram stack[]
scoreboard players remove #$log.trail.internal ml.core.fun 2

execute store result storage ca:ram stack[-1].stack_trail[0] int 1 run scoreboard players get #$log.trail.external ml.core.fun
execute store result storage ca:ram stack[-1].stack_trail[1] int 1 run scoreboard players get #$log.trail.internal ml.core.fun

scoreboard players reset #$log.trail.external ml.core.fun
scoreboard players reset #$log.trail.internal ml.core.fun

data modify storage ca:ram stack[-1].log_type set from storage ca:ram stack[-2].log_entry.type
data modify storage ca:ram stack[-1].function set from storage ca:ram stack[-2].log_entry.function
data modify storage ca:ram stack[-1].msg set from storage ca:ram stack[-2].log_entry.msg

# =========================================================================================================================

data modify storage ca:logs latest_log append from storage ca:ram stack[-1]

function ca:ml/core/log/chat_entry

# =========================================================================================================================

data remove storage ca:ram stack[-2].log_entry
data remove storage ca:ram stack[-1]

# =========================================================================================================================

return 1

# =========================================================================================================================

