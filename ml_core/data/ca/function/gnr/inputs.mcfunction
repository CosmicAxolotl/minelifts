
# =========================================================================================================================

function ca:gnr_lay/new/ext

# =========================================================================================================================

data modify storage ca:ram stack[-1].input set value [  \
    {                                                   \
        forward:false,                                  \
        backward:false,                                 \
        right:false,                                    \
        left:false,                                     \
        jump:false,                                     \
        crouch:false,                                   \
        sprint:false,                                   \
    }                                                   \
]

# =========================================================================================================================

execute store result storage \
    ca:ram stack[-1].input[0].forward byte 1 \
        if predicate ca:gnr/input/move/forward

execute store result storage \
    ca:ram stack[-1].input[0].backward byte 1 \
        if predicate ca:gnr/input/move/backward

execute store result storage \
    ca:ram stack[-1].input[0].right byte 1 \
        if predicate ca:gnr/input/move/right

execute store result storage \
    ca:ram stack[-1].input[0].left byte 1 \
        if predicate ca:gnr/input/move/left

execute store result storage \
    ca:ram stack[-1].input[0].jump byte 1 \
        if predicate ca:gnr/input/jump

execute store result storage \
    ca:ram stack[-1].input[0].crouch byte 1 \
        if predicate ca:gnr/input/crouch

execute store result storage \
    ca:ram stack[-1].input[0].sprint byte 1 \
        if predicate ca:gnr/input/sprint

# =========================================================================================================================

function #ca:listeners/inputs
advancement revoke @s only ca:gnr/inputs

# =========================================================================================================================

function ca:gnr_lay/delete/ext

# =========================================================================================================================
