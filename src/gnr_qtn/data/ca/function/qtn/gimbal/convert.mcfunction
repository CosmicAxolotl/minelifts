
# ======================================

function ca:gnr_lay/new/int

# ======================================


data modify storage ca:ram stack[-1].gimbal set from storage ca:ram stack[-2].gimbal


# ======================================


data modify storage ca:ram stack[-1].input set from \
    storage ca:ram stack[-1].gimbal[0]

function ca:gnr/trig/sin
execute store result score #$.tmp.vec.x ca.gnr.fun run \
    data get storage ca:ram stack[-1].output 1000

function ca:gnr/trig/cos
execute store result score #$.tmp.vec.z ca.gnr.fun run \
    data get storage ca:ram stack[-1].output 1000



data modify storage ca:ram stack[-1].input set from \
    storage ca:ram stack[-1].gimbal[1]

function ca:gnr/trig/sin
execute store result score #$.tmp.vec.y ca.gnr.fun run \
    data get storage ca:ram stack[-1].output -1000

function ca:gnr/trig/cos
execute store result score #$.tmp.vec.correction ca.gnr.fun run \
    data get storage ca:ram stack[-1].output 1000


# ======================================


execute store result storage ca:ram stack[-1].input float 0.001 run \
    data get storage ca:ram stack[-1].gimbal[2] -500

function ca:gnr/trig/cos
execute store result score #$.tmp.vec.rot_angle ca.gnr.fun run \
    data get storage ca:ram stack[-1].output 1000

function ca:gnr/trig/sin
execute store result score #$.tmp.vec.sine ca.gnr.fun run \
    data get storage ca:ram stack[-1].output 1000


# ======================================

scoreboard players set #1000 ca.gnr.fun 1000

scoreboard players operation \
                                    #$.tmp.vec.x ca.gnr.fun *= #$.tmp.vec.correction ca.gnr.fun
scoreboard players operation \
                                    #$.tmp.vec.z ca.gnr.fun *= #$.tmp.vec.correction ca.gnr.fun
scoreboard players operation \
                                    #$.tmp.vec.x ca.gnr.fun /= #1000 ca.gnr.fun
scoreboard players operation \
                                    #$.tmp.vec.z ca.gnr.fun /= #1000 ca.gnr.fun

scoreboard players operation \
                                    #$.tmp.vec.x ca.gnr.fun *= #$.tmp.vec.sine ca.gnr.fun
scoreboard players operation \
                                    #$.tmp.vec.y ca.gnr.fun *= #$.tmp.vec.sine ca.gnr.fun
scoreboard players operation \
                                    #$.tmp.vec.z ca.gnr.fun *= #$.tmp.vec.sine ca.gnr.fun

scoreboard players operation \
                                    #$.tmp.vec.x ca.gnr.fun /= #1000 ca.gnr.fun
scoreboard players operation \
                                    #$.tmp.vec.y ca.gnr.fun /= #1000 ca.gnr.fun
scoreboard players operation \
                                    #$.tmp.vec.z ca.gnr.fun /= #1000 ca.gnr.fun

# ======================================


data modify storage ca:ram stack[-1].quaternion set value [0.0f, 0.0f, 0.0f, 0.0f]

execute store result storage ca:ram stack[-1].quaternion[0] float 0.001 run \
    scoreboard players get #$.tmp.vec.rot_angle ca.gnr.fun

execute store result storage ca:ram stack[-1].quaternion[1] float 0.001 run \
    scoreboard players get #$.tmp.vec.x ca.gnr.fun

execute store result storage ca:ram stack[-1].quaternion[2] float 0.001 run \
    scoreboard players get #$.tmp.vec.y ca.gnr.fun

execute store result storage ca:ram stack[-1].quaternion[3] float 0.001 run \
    scoreboard players get #$.tmp.vec.z ca.gnr.fun


data modify storage ca:ram stack[-2].result set from storage ca:ram stack[-1].quaternion


# ======================================

function ca:gnr_lay/delete/int

# ======================================
