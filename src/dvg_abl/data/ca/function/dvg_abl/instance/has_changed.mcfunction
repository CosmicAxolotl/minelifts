
# =========================================================================================================================

function ca:gnr_lay/new/int

data modify storage ca:ram stack[-1].vector set value [0d,0d,0d,0d]
    execute at @s \
        summon marker unless \
            function ca:dvg_abl/instance/task/get_rotation/marker \
            run kill @s


data modify storage ca:ram stack[-1].input set from \
    storage ca:ram stack[-1].rot[0]

function ca:gnr/trig/sin
execute store result storage ca:ram stack[-1].vector[0] double 0.001 run \
    data get storage ca:ram stack[-1].output 1000

function ca:gnr/trig/cos
data modify storage ca:ram stack[-1].vector[2] set from \
    storage ca:ram stack[-1].output


data modify storage ca:ram stack[-1].input set from \
    storage ca:ram stack[-1].rot[1]

function ca:gnr/trig/sin
execute store result storage ca:ram stack[-1].vector[1] double 0.001 run \
    data get storage ca:ram stack[-1].output -1000

function ca:gnr/trig/cos
execute store result storage ca:ram stack[-1].vector[3] double 0.001 run \
    data get storage ca:ram stack[-1].output 1000

scoreboard players set #-1 ca.dvg_abl.fun -1
scoreboard players set #1000 ca.dvg_abl.fun 1000


execute store result score #$.tmp.vec.x ca.dvg_abl.fun run \
    data get storage ca:ram stack[-1].vector[0] 1000
execute \
    if score #$.tmp.vec.x ca.dvg_abl.fun matches ..-1 run \
        scoreboard players operation \
                                    #$.tmp.vec.x ca.dvg_abl.fun *= #-1 ca.dvg_abl.fun

execute store result score #$.tmp.vec.y ca.dvg_abl.fun run \
    data get storage ca:ram stack[-1].vector[1] 1000
execute \
    if score #$.tmp.vec.y ca.dvg_abl.fun matches ..-1 run \
        scoreboard players operation \
                                    #$.tmp.vec.y ca.dvg_abl.fun *= #-1 ca.dvg_abl.fun

execute store result score #$.tmp.vec.z ca.dvg_abl.fun run \
    data get storage ca:ram stack[-1].vector[2] 1000
execute \
    if score #$.tmp.vec.z ca.dvg_abl.fun matches ..-1 run \
        scoreboard players operation \
                                    #$.tmp.vec.z ca.dvg_abl.fun *= #-1 ca.dvg_abl.fun

execute store result score #$.tmp.vec.correction ca.dvg_abl.fun run \
    data get storage ca:ram stack[-1].vector[3] 1000
execute \
    if score #$.tmp.vec.correction ca.dvg_abl.fun matches ..-1 run \
        scoreboard players operation \
                                    #$.tmp.vec.correction ca.dvg_abl.fun *= #-1 ca.dvg_abl.fun

scoreboard players operation \
                                    #$.tmp.vec.x ca.dvg_abl.fun *= #$.tmp.vec.correction ca.dvg_abl.fun
scoreboard players operation \
                                    #$.tmp.vec.z ca.dvg_abl.fun *= #$.tmp.vec.correction ca.dvg_abl.fun
scoreboard players operation \
                                    #$.tmp.vec.x ca.dvg_abl.fun /= #1000 ca.dvg_abl.fun
scoreboard players operation \
                                    #$.tmp.vec.z ca.dvg_abl.fun /= #1000 ca.dvg_abl.fun


execute \
    if score #$.tmp.vec.x ca.dvg_abl.fun > #$.tmp.vec.y ca.dvg_abl.fun \
    if score #$.tmp.vec.x ca.dvg_abl.fun > #$.tmp.vec.z ca.dvg_abl.fun \
        run data modify storage ca:ram stack[-1].greater_component_is.x set from \
            storage ca:ram stack[-1].vector[0]
execute \
    if score #$.tmp.vec.y ca.dvg_abl.fun > #$.tmp.vec.x ca.dvg_abl.fun \
    if score #$.tmp.vec.y ca.dvg_abl.fun > #$.tmp.vec.z ca.dvg_abl.fun \
        run data modify storage ca:ram stack[-1].greater_component_is.y set from \
            storage ca:ram stack[-1].vector[1]
execute \
    if score #$.tmp.vec.z ca.dvg_abl.fun > #$.tmp.vec.x ca.dvg_abl.fun \
    if score #$.tmp.vec.z ca.dvg_abl.fun > #$.tmp.vec.y ca.dvg_abl.fun \
        run data modify storage ca:ram stack[-1].greater_component_is.z set from \
            storage ca:ram stack[-1].vector[2]


execute \
    if data storage \
        ca:ram stack[-1].greater_component_is.x \
        store result score #$.tmp.vec.magnitude ca.dvg_abl.fun run \
            data get storage ca:ram stack[-1].vector[0] 1000
execute \
    if data storage \
        ca:ram stack[-1].greater_component_is.y \
        store result score #$.tmp.vec.magnitude ca.dvg_abl.fun run \
            data get storage ca:ram stack[-1].vector[1] 1000
execute \
    if data storage \
        ca:ram stack[-1].greater_component_is.z \
        store result score #$.tmp.vec.magnitude ca.dvg_abl.fun run \
            data get storage ca:ram stack[-1].vector[2] 1000


execute \
    if score #$.tmp.vec.magnitude ca.dvg_abl.fun matches ..-1 \
    if data storage ca:ram stack[-1].greater_component_is.x \
    if entity \
        @s[tag=!dvg_abl.facing.east] run return 1
execute \
    if score #$.tmp.vec.magnitude ca.dvg_abl.fun matches 0.. \
    if data storage ca:ram stack[-1].greater_component_is.x \
    if entity \
        @s[tag=!dvg_abl.facing.west] run return 1

execute \
    if score #$.tmp.vec.magnitude ca.dvg_abl.fun matches ..-1 \
    if data storage ca:ram stack[-1].greater_component_is.z \
    if entity \
        @s[tag=!dvg_abl.facing.north] run return 1
execute \
    if score #$.tmp.vec.magnitude ca.dvg_abl.fun matches 0.. \
    if data storage ca:ram stack[-1].greater_component_is.z \
    if entity \
        @s[tag=!dvg_abl.facing.south] run return 1

execute \
    if score #$.tmp.vec.magnitude ca.dvg_abl.fun matches ..-1 \
    if data storage ca:ram stack[-1].greater_component_is.y \
    if entity \
        @s[tag=!dvg_abl.facing.down] run return 1
execute \
    if score #$.tmp.vec.magnitude ca.dvg_abl.fun matches 0.. \
    if data storage ca:ram stack[-1].greater_component_is.y \
    if entity \
        @s[tag=!dvg_abl.facing.up] run return 1

function ca:gnr_lay/delete/int

return fail

# =========================================================================================================================
