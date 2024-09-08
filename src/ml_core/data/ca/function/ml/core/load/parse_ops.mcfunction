

# =========================================================================================================================

data modify storage ca:ram protected_stack append from storage ca:ram stack
data modify storage ca:ram stack set value [{log_entry:{function:"ca:ml/core/load/parse_ops",type:"INFO",msg:"Found core tasks. Opening ops utility!"}}]

function ca:ml/core/log/generate_entry

# =========================================================================================================================

data modify storage ca:ram stack[-1].op set from storage ca:ram operations[-1]

# =========================================================================================================================

##      ml:add_module
execute if data storage ca:ram stack{op:"ml:add_module"}

# =========================================================================================================================

