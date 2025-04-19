
# =========================================================================================================================

function ca:gnr_lay/new/int

# =========================================================================================================================

data modify storage ca:ram stack[-1].move set value {steps:1} 

execute if score \
    #$steps ca.dvg_abl.fun matches 0.. \
    store result storage ca:ram stack[-1].move.steps int 1 run \
        scoreboard players get #$steps ca.dvg_abl.fun
execute if score \
    #$steps ca.dvg_abl.fun matches ..-1 \
    store result storage ca:ram stack[-1].move.steps int -1 run \
        scoreboard players get #$steps ca.dvg_abl.fun

# =========================================================================================================================

function ca:dvg_abl/instance/method/update_minimap

# =========================================================================================================================

execute store result score #$steps ca.dvg_abl.fun run \
    data get storage ca:ram stack[-1].move.steps

execute store result score #$move.x ca.dvg_abl.fun run \
    data get storage ca:ram stack[-2].step_vector[0]
execute store result score #$move.y ca.dvg_abl.fun run \
    data get storage ca:ram stack[-2].step_vector[1]
execute store result score #$move.z ca.dvg_abl.fun run \
    data get storage ca:ram stack[-2].step_vector[2]


scoreboard players operation \
                                                    #$move.x ca.dvg_abl.fun *= #$steps ca.dvg_abl.fun
scoreboard players operation \
                                                    #$move.y ca.dvg_abl.fun *= #$steps ca.dvg_abl.fun
scoreboard players operation \
                                                    #$move.z ca.dvg_abl.fun *= #$steps ca.dvg_abl.fun


scoreboard players operation \
                                                    @s ca.dvg_abl.tail.rdc.x += #$move.x ca.dvg_abl.fun
scoreboard players operation \
                                                    @s ca.dvg_abl.tail.rdc.y += #$move.y ca.dvg_abl.fun
scoreboard players operation \
                                                    @s ca.dvg_abl.tail.rdc.z += #$move.z ca.dvg_abl.fun

# =========================================================================================================================

function ca:dvg_abl/method/pivot/resonance

# =========================================================================================================================

function ca:gnr_lay/delete/int

# =========================================================================================================================
