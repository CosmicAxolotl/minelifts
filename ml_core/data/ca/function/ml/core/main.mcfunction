

# =========================================================================================================================

execute store result score #$memory_leak.ext ml.core.fun if data storage ca:ram protected_stack[]
    execute if score #$memory_leak.ext ml.core.fun matches 1.. run say Memory leak on External

execute store result score #$memory_leak.ext ml.core.fun if data storage ca:ram stack[]
    execute if score #$memory_leak.int ml.core.fun matches 1.. run say Memory leak on Internal

data modify storage ca:ram protected_stack set value []
data modify storage ca:ram stack set value []

# =========================================================================================================================

scoreboard players add #$tick ml.core.fun 1

# =========================================================================================================================

schedule function ca:ml/core/main 1t

# =========================================================================================================================

