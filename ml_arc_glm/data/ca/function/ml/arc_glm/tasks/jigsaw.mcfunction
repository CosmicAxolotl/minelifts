
# ===============================================================================================================================

function ca:gnr_lay/new/int

# ===============================================================================================================================

data modify storage ca:ram stack[-1].gimbal set value [ 0.0f , 0.0f , 0.0f ]

execute store result storage ca:ram stack[-1].gimbal[0] float 0.001 run scoreboard players get @s ca.ml.arc_glm.rotation.x
execute store result storage ca:ram stack[-1].gimbal[1] float 0.001 run scoreboard players get @s ca.ml.arc_glm.rotation.y
execute store result storage ca:ram stack[-1].gimbal[2] float 0.001 run scoreboard players get @s ca.ml.arc_glm.rotation.z

function ca:qtn/gimbal/convert

data modify storage ca:ram stack[-1].quaternions append from storage ca:ram stack[-1].result
data modify storage ca:ram stack[-1].quaternions append value [0.0f, 0.0f, 0.0f, 0.0f]
data modify storage ca:ram stack[-1].quaternions append from storage ca:ram stack[-1].result

## calculate conjugate of rotation quaternion, nerd stuff basically
execute store result storage ca:ram stack[-1].quaternions[2][1] float 0.001 run \
    data get storage ca:ram stack[-1].quaternions[2][1] -1000
execute store result storage ca:ram stack[-1].quaternions[2][2] float 0.001 run \
    data get storage ca:ram stack[-1].quaternions[2][2] -1000
execute store result storage ca:ram stack[-1].quaternions[2][3] float 0.001 run \
    data get storage ca:ram stack[-1].quaternions[2][3] -1000


# ===============================================================================================================================

data modify storage ca:ram stack[-1].quaternions[1] set value [0.0f, 1.0f, 0.0f, 0.0f]
function ca:qtn/operation/product
data remove storage ca:ram stack[-1].result[0]
data modify storage ca:ram stack[-1].vectors.1_0_0 set from storage ca:ram stack[-1].result


data modify storage ca:ram stack[-1].quaternions[1] set value [0.0f, 0.0f, 1.0f, 0.0f]
function ca:qtn/operation/product
data remove storage ca:ram stack[-1].result[0]
data modify storage ca:ram stack[-1].vectors.0_1_0 set from storage ca:ram stack[-1].result


data modify storage ca:ram stack[-1].quaternions[1] set value [0.0f, 0.0f, 0.0f, 1.0f]
function ca:qtn/operation/product
data remove storage ca:ram stack[-1].result[0]
data modify storage ca:ram stack[-1].vectors.0_0_1 set from storage ca:ram stack[-1].result


data modify storage ca:ram stack[-1].quaternions[1] set value [0.0f, 1.0f, 1.0f, 1.0f]
function ca:qtn/operation/product
data remove storage ca:ram stack[-1].result[0]
data modify storage ca:ram stack[-1].vectors.1_1_1 set from storage ca:ram stack[-1].result

# ===============================================================================================================================

data modify storage ca:ram stack[-1].quaternions[1] set value [0.0f, 2.0f, 0.0f, 0.0f]
function ca:qtn/operation/product
data remove storage ca:ram stack[-1].result[0]
data modify storage ca:ram stack[-1].vectors.2_0_0 set from storage ca:ram stack[-1].result


data modify storage ca:ram stack[-1].quaternions[1] set value [0.0f, 0.0f, 2.0f, 0.0f]
function ca:qtn/operation/product
data remove storage ca:ram stack[-1].result[0]
data modify storage ca:ram stack[-1].vectors.0_2_0 set from storage ca:ram stack[-1].result


data modify storage ca:ram stack[-1].quaternions[1] set value [0.0f, 0.0f, 0.0f, 2.0f]
function ca:qtn/operation/product
data remove storage ca:ram stack[-1].result[0]
data modify storage ca:ram stack[-1].vectors.0_0_2 set from storage ca:ram stack[-1].result


data modify storage ca:ram stack[-1].quaternions[1] set value [0.0f, 2.0f, 2.0f, 2.0f]
function ca:qtn/operation/product
data remove storage ca:ram stack[-1].result[0]
data modify storage ca:ram stack[-1].vectors.2_2_2 set from storage ca:ram stack[-1].result

# ===============================================================================================================================

data modify storage ca:ram stack[-1].quaternions[1] set value [0.0f, 4.0f, 0.0f, 0.0f]
function ca:qtn/operation/product
data remove storage ca:ram stack[-1].result[0]
data modify storage ca:ram stack[-1].vectors.4_0_0 set from storage ca:ram stack[-1].result


data modify storage ca:ram stack[-1].quaternions[1] set value [0.0f, 0.0f, 4.0f, 0.0f]
function ca:qtn/operation/product
data remove storage ca:ram stack[-1].result[0]
data modify storage ca:ram stack[-1].vectors.0_4_0 set from storage ca:ram stack[-1].result


data modify storage ca:ram stack[-1].quaternions[1] set value [0.0f, 0.0f, 0.0f, 4.0f]
function ca:qtn/operation/product
data remove storage ca:ram stack[-1].result[0]
data modify storage ca:ram stack[-1].vectors.0_0_4 set from storage ca:ram stack[-1].result


data modify storage ca:ram stack[-1].quaternions[1] set value [0.0f, 4.0f, 4.0f, 4.0f]
function ca:qtn/operation/product
data remove storage ca:ram stack[-1].result[0]
data modify storage ca:ram stack[-1].vectors.4_4_4 set from storage ca:ram stack[-1].result

# ===============================================================================================================================

data modify storage ca:ram stack[-1].quaternions[1] set value [0.0f, 8.0f, 0.0f, 0.0f]
function ca:qtn/operation/product
data remove storage ca:ram stack[-1].result[0]
data modify storage ca:ram stack[-1].vectors.8_0_0 set from storage ca:ram stack[-1].result


data modify storage ca:ram stack[-1].quaternions[1] set value [0.0f, 0.0f, 8.0f, 0.0f]
function ca:qtn/operation/product
data remove storage ca:ram stack[-1].result[0]
data modify storage ca:ram stack[-1].vectors.0_8_0 set from storage ca:ram stack[-1].result


data modify storage ca:ram stack[-1].quaternions[1] set value [0.0f, 0.0f, 0.0f, 8.0f]
function ca:qtn/operation/product
data remove storage ca:ram stack[-1].result[0]
data modify storage ca:ram stack[-1].vectors.0_0_8 set from storage ca:ram stack[-1].result


data modify storage ca:ram stack[-1].quaternions[1] set value [0.0f, 8.0f, 8.0f, 8.0f]
function ca:qtn/operation/product
data remove storage ca:ram stack[-1].result[0]
data modify storage ca:ram stack[-1].vectors.8_8_8 set from storage ca:ram stack[-1].result

# ===============================================================================================================================

data modify storage ca:ram stack[-1].quaternions[1] set value [0.0f, 8.0f, 0.0f, 0.0f]
function ca:qtn/operation/product
data remove storage ca:ram stack[-1].result[0]
data modify storage ca:ram stack[-1].vectors.8_0_0 set from storage ca:ram stack[-1].result


data modify storage ca:ram stack[-1].quaternions[1] set value [0.0f, 0.0f, 8.0f, 0.0f]
function ca:qtn/operation/product
data remove storage ca:ram stack[-1].result[0]
data modify storage ca:ram stack[-1].vectors.0_8_0 set from storage ca:ram stack[-1].result


data modify storage ca:ram stack[-1].quaternions[1] set value [0.0f, 0.0f, 0.0f, 8.0f]
function ca:qtn/operation/product
data remove storage ca:ram stack[-1].result[0]
data modify storage ca:ram stack[-1].vectors.0_0_8 set from storage ca:ram stack[-1].result


data modify storage ca:ram stack[-1].quaternions[1] set value [0.0f, 8.0f, 8.0f, 8.0f]
function ca:qtn/operation/product
data remove storage ca:ram stack[-1].result[0]
data modify storage ca:ram stack[-1].vectors.8_8_8 set from storage ca:ram stack[-1].result

# ===============================================================================================================================

data modify storage ca:ram stack[-1].quaternions[1] set value [0.0f, 0.0f, 0.0f, 0.0f]
execute store result storage ca:ram stack[-1].quaternions[1][1] float 0.001 run scoreboard players get @s ca.ml.arc_glm.translation.x
execute store result storage ca:ram stack[-1].quaternions[1][2] float 0.001 run scoreboard players get @s ca.ml.arc_glm.translation.y
execute store result storage ca:ram stack[-1].quaternions[1][3] float 0.001 run scoreboard players get @s ca.ml.arc_glm.translation.z
function ca:qtn/operation/product
data remove storage ca:ram stack[-1].result[0]
data modify storage ca:ram stack[-1].vectors.translation set from storage ca:ram stack[-1].result

# ===============================================================================================================================

data modify storage ca:ram stack[-1].compound_vector.translation.x set from storage ca:ram stack[-1].vectors.translation[0]
data modify storage ca:ram stack[-1].compound_vector.translation.y set from storage ca:ram stack[-1].vectors.translation[1]
data modify storage ca:ram stack[-1].compound_vector.translation.z set from storage ca:ram stack[-1].vectors.translation[2]

data modify storage ca:ram stack[-1].compound_vector.1_0_0.x set from storage ca:ram stack[-1].vectors.1_0_0[0]
data modify storage ca:ram stack[-1].compound_vector.1_0_0.y set from storage ca:ram stack[-1].vectors.1_0_0[1]
data modify storage ca:ram stack[-1].compound_vector.1_0_0.z set from storage ca:ram stack[-1].vectors.1_0_0[2]

data modify storage ca:ram stack[-1].compound_vector.0_1_0.x set from storage ca:ram stack[-1].vectors.0_1_0[0]
data modify storage ca:ram stack[-1].compound_vector.0_1_0.y set from storage ca:ram stack[-1].vectors.0_1_0[1]
data modify storage ca:ram stack[-1].compound_vector.0_1_0.z set from storage ca:ram stack[-1].vectors.0_1_0[2]

data modify storage ca:ram stack[-1].compound_vector.0_0_1.x set from storage ca:ram stack[-1].vectors.0_0_1[0]
data modify storage ca:ram stack[-1].compound_vector.0_0_1.y set from storage ca:ram stack[-1].vectors.0_0_1[1]
data modify storage ca:ram stack[-1].compound_vector.0_0_1.z set from storage ca:ram stack[-1].vectors.0_0_1[2]

data modify storage ca:ram stack[-1].compound_vector.1_1_1.x set from storage ca:ram stack[-1].vectors.1_1_1[0]
data modify storage ca:ram stack[-1].compound_vector.1_1_1.y set from storage ca:ram stack[-1].vectors.1_1_1[1]
data modify storage ca:ram stack[-1].compound_vector.1_1_1.z set from storage ca:ram stack[-1].vectors.1_1_1[2]


data modify storage ca:ram stack[-1].compound_vector.2_0_0.x set from storage ca:ram stack[-1].vectors.2_0_0[0]
data modify storage ca:ram stack[-1].compound_vector.2_0_0.y set from storage ca:ram stack[-1].vectors.2_0_0[1]
data modify storage ca:ram stack[-1].compound_vector.2_0_0.z set from storage ca:ram stack[-1].vectors.2_0_0[2]

data modify storage ca:ram stack[-1].compound_vector.0_2_0.x set from storage ca:ram stack[-1].vectors.0_2_0[0]
data modify storage ca:ram stack[-1].compound_vector.0_2_0.y set from storage ca:ram stack[-1].vectors.0_2_0[1]
data modify storage ca:ram stack[-1].compound_vector.0_2_0.z set from storage ca:ram stack[-1].vectors.0_2_0[2]

data modify storage ca:ram stack[-1].compound_vector.0_0_2.x set from storage ca:ram stack[-1].vectors.0_0_2[0]
data modify storage ca:ram stack[-1].compound_vector.0_0_2.y set from storage ca:ram stack[-1].vectors.0_0_2[1]
data modify storage ca:ram stack[-1].compound_vector.0_0_2.z set from storage ca:ram stack[-1].vectors.0_0_2[2]

data modify storage ca:ram stack[-1].compound_vector.2_2_2.x set from storage ca:ram stack[-1].vectors.2_2_2[0]
data modify storage ca:ram stack[-1].compound_vector.2_2_2.y set from storage ca:ram stack[-1].vectors.2_2_2[1]
data modify storage ca:ram stack[-1].compound_vector.2_2_2.z set from storage ca:ram stack[-1].vectors.2_2_2[2]


data modify storage ca:ram stack[-1].compound_vector.4_0_0.x set from storage ca:ram stack[-1].vectors.4_0_0[0]
data modify storage ca:ram stack[-1].compound_vector.4_0_0.y set from storage ca:ram stack[-1].vectors.4_0_0[1]
data modify storage ca:ram stack[-1].compound_vector.4_0_0.z set from storage ca:ram stack[-1].vectors.4_0_0[2]

data modify storage ca:ram stack[-1].compound_vector.0_4_0.x set from storage ca:ram stack[-1].vectors.0_4_0[0]
data modify storage ca:ram stack[-1].compound_vector.0_4_0.y set from storage ca:ram stack[-1].vectors.0_4_0[1]
data modify storage ca:ram stack[-1].compound_vector.0_4_0.z set from storage ca:ram stack[-1].vectors.0_4_0[2]

data modify storage ca:ram stack[-1].compound_vector.0_0_4.x set from storage ca:ram stack[-1].vectors.0_0_4[0]
data modify storage ca:ram stack[-1].compound_vector.0_0_4.y set from storage ca:ram stack[-1].vectors.0_0_4[1]
data modify storage ca:ram stack[-1].compound_vector.0_0_4.z set from storage ca:ram stack[-1].vectors.0_0_4[2]

data modify storage ca:ram stack[-1].compound_vector.4_4_4.x set from storage ca:ram stack[-1].vectors.4_4_4[0]
data modify storage ca:ram stack[-1].compound_vector.4_4_4.y set from storage ca:ram stack[-1].vectors.4_4_4[1]
data modify storage ca:ram stack[-1].compound_vector.4_4_4.z set from storage ca:ram stack[-1].vectors.4_4_4[2]


data modify storage ca:ram stack[-1].compound_vector.8_0_0.x set from storage ca:ram stack[-1].vectors.8_0_0[0]
data modify storage ca:ram stack[-1].compound_vector.8_0_0.y set from storage ca:ram stack[-1].vectors.8_0_0[1]
data modify storage ca:ram stack[-1].compound_vector.8_0_0.z set from storage ca:ram stack[-1].vectors.8_0_0[2]

data modify storage ca:ram stack[-1].compound_vector.0_8_0.x set from storage ca:ram stack[-1].vectors.0_8_0[0]
data modify storage ca:ram stack[-1].compound_vector.0_8_0.y set from storage ca:ram stack[-1].vectors.0_8_0[1]
data modify storage ca:ram stack[-1].compound_vector.0_8_0.z set from storage ca:ram stack[-1].vectors.0_8_0[2]

data modify storage ca:ram stack[-1].compound_vector.0_0_8.x set from storage ca:ram stack[-1].vectors.0_0_8[0]
data modify storage ca:ram stack[-1].compound_vector.0_0_8.y set from storage ca:ram stack[-1].vectors.0_0_8[1]
data modify storage ca:ram stack[-1].compound_vector.0_0_8.z set from storage ca:ram stack[-1].vectors.0_0_8[2]

data modify storage ca:ram stack[-1].compound_vector.8_8_8.x set from storage ca:ram stack[-1].vectors.8_8_8[0]
data modify storage ca:ram stack[-1].compound_vector.8_8_8.y set from storage ca:ram stack[-1].vectors.8_8_8[1]
data modify storage ca:ram stack[-1].compound_vector.8_8_8.z set from storage ca:ram stack[-1].vectors.8_8_8[2]

# ===============================================================================================================================

execute store result storage ca:ram stack[-1].compound_vector.-1_0_0.x float -0.001 run \
    data get storage ca:ram stack[-1].compound_vector.1_0_0.x 1000
execute store result storage ca:ram stack[-1].compound_vector.-1_0_0.y float -0.001 run \
    data get storage ca:ram stack[-1].compound_vector.1_0_0.y 1000
execute store result storage ca:ram stack[-1].compound_vector.-1_0_0.z float -0.001 run \
    data get storage ca:ram stack[-1].compound_vector.1_0_0.z 1000

execute store result storage ca:ram stack[-1].compound_vector.0_-1_0.x float -0.001 run \
    data get storage ca:ram stack[-1].compound_vector.0_1_0.x 1000
execute store result storage ca:ram stack[-1].compound_vector.0_-1_0.y float -0.001 run \
    data get storage ca:ram stack[-1].compound_vector.0_1_0.y 1000
execute store result storage ca:ram stack[-1].compound_vector.0_-1_0.z float -0.001 run \
    data get storage ca:ram stack[-1].compound_vector.0_1_0.z 1000

execute store result storage ca:ram stack[-1].compound_vector.0_0_-1.x float -0.001 run \
    data get storage ca:ram stack[-1].compound_vector.0_0_1.x 1000
execute store result storage ca:ram stack[-1].compound_vector.0_0_-1.y float -0.001 run \
    data get storage ca:ram stack[-1].compound_vector.0_0_1.y 1000
execute store result storage ca:ram stack[-1].compound_vector.0_0_-1.z float -0.001 run \
    data get storage ca:ram stack[-1].compound_vector.0_0_1.z 1000

execute store result storage ca:ram stack[-1].compound_vector.-1_-1_-1.x float -0.001 run \
    data get storage ca:ram stack[-1].compound_vector.1_1_1.x 1000
execute store result storage ca:ram stack[-1].compound_vector.-1_-1_-1.y float -0.001 run \
    data get storage ca:ram stack[-1].compound_vector.1_1_1.y 1000
execute store result storage ca:ram stack[-1].compound_vector.-1_-1_-1.z float -0.001 run \
    data get storage ca:ram stack[-1].compound_vector.1_1_1.z 1000



execute store result storage ca:ram stack[-1].compound_vector.-2_0_0.x float -0.001 run \
    data get storage ca:ram stack[-1].compound_vector.2_0_0.x 1000
execute store result storage ca:ram stack[-1].compound_vector.-2_0_0.y float -0.001 run \
    data get storage ca:ram stack[-1].compound_vector.2_0_0.y 1000
execute store result storage ca:ram stack[-1].compound_vector.-2_0_0.z float -0.001 run \
    data get storage ca:ram stack[-1].compound_vector.2_0_0.z 1000

execute store result storage ca:ram stack[-1].compound_vector.0_-2_0.x float -0.001 run \
    data get storage ca:ram stack[-1].compound_vector.0_2_0.x 1000
execute store result storage ca:ram stack[-1].compound_vector.0_-2_0.y float -0.001 run \
    data get storage ca:ram stack[-1].compound_vector.0_2_0.y 1000
execute store result storage ca:ram stack[-1].compound_vector.0_-2_0.z float -0.001 run \
    data get storage ca:ram stack[-1].compound_vector.0_2_0.z 1000

execute store result storage ca:ram stack[-1].compound_vector.0_0_-2.x float -0.001 run \
    data get storage ca:ram stack[-1].compound_vector.0_0_2.x 1000
execute store result storage ca:ram stack[-1].compound_vector.0_0_-2.y float -0.001 run \
    data get storage ca:ram stack[-1].compound_vector.0_0_2.y 1000
execute store result storage ca:ram stack[-1].compound_vector.0_0_-2.z float -0.001 run \
    data get storage ca:ram stack[-1].compound_vector.0_0_2.z 1000

execute store result storage ca:ram stack[-1].compound_vector.-2_-2_-2.x float -0.001 run \
    data get storage ca:ram stack[-1].compound_vector.2_2_2.x 1000
execute store result storage ca:ram stack[-1].compound_vector.-2_-2_-2.y float -0.001 run \
    data get storage ca:ram stack[-1].compound_vector.2_2_2.y 1000
execute store result storage ca:ram stack[-1].compound_vector.-2_-2_-2.z float -0.001 run \
    data get storage ca:ram stack[-1].compound_vector.2_2_2.z 1000

    

execute store result storage ca:ram stack[-1].compound_vector.-4_0_0.x float -0.001 run \
    data get storage ca:ram stack[-1].compound_vector.4_0_0.x 1000
execute store result storage ca:ram stack[-1].compound_vector.-4_0_0.y float -0.001 run \
    data get storage ca:ram stack[-1].compound_vector.4_0_0.y 1000
execute store result storage ca:ram stack[-1].compound_vector.-4_0_0.z float -0.001 run \
    data get storage ca:ram stack[-1].compound_vector.4_0_0.z 1000

execute store result storage ca:ram stack[-1].compound_vector.0_-4_0.x float -0.001 run \
    data get storage ca:ram stack[-1].compound_vector.0_4_0.x 1000
execute store result storage ca:ram stack[-1].compound_vector.0_-4_0.y float -0.001 run \
    data get storage ca:ram stack[-1].compound_vector.0_4_0.y 1000
execute store result storage ca:ram stack[-1].compound_vector.0_-4_0.z float -0.001 run \
    data get storage ca:ram stack[-1].compound_vector.0_4_0.z 1000

execute store result storage ca:ram stack[-1].compound_vector.0_0_-4.x float -0.001 run \
    data get storage ca:ram stack[-1].compound_vector.0_0_4.x 1000
execute store result storage ca:ram stack[-1].compound_vector.0_0_-4.y float -0.001 run \
    data get storage ca:ram stack[-1].compound_vector.0_0_4.y 1000
execute store result storage ca:ram stack[-1].compound_vector.0_0_-4.z float -0.001 run \
    data get storage ca:ram stack[-1].compound_vector.0_0_4.z 1000

execute store result storage ca:ram stack[-1].compound_vector.-4_-4_-4.x float -0.001 run \
    data get storage ca:ram stack[-1].compound_vector.4_4_4.x 1000
execute store result storage ca:ram stack[-1].compound_vector.-4_-4_-4.y float -0.001 run \
    data get storage ca:ram stack[-1].compound_vector.4_4_4.y 1000
execute store result storage ca:ram stack[-1].compound_vector.-4_-4_-4.z float -0.001 run \
    data get storage ca:ram stack[-1].compound_vector.4_4_4.z 1000



execute store result storage ca:ram stack[-1].compound_vector.-8_0_0.x float -0.001 run \
    data get storage ca:ram stack[-1].compound_vector.8_0_0.x 1000
execute store result storage ca:ram stack[-1].compound_vector.-8_0_0.y float -0.001 run \
    data get storage ca:ram stack[-1].compound_vector.8_0_0.y 1000
execute store result storage ca:ram stack[-1].compound_vector.-8_0_0.z float -0.001 run \
    data get storage ca:ram stack[-1].compound_vector.8_0_0.z 1000

execute store result storage ca:ram stack[-1].compound_vector.0_-8_0.x float -0.001 run \
    data get storage ca:ram stack[-1].compound_vector.0_8_0.x 1000
execute store result storage ca:ram stack[-1].compound_vector.0_-8_0.y float -0.001 run \
    data get storage ca:ram stack[-1].compound_vector.0_8_0.y 1000
execute store result storage ca:ram stack[-1].compound_vector.0_-8_0.z float -0.001 run \
    data get storage ca:ram stack[-1].compound_vector.0_8_0.z 1000

execute store result storage ca:ram stack[-1].compound_vector.0_0_-8.x float -0.001 run \
    data get storage ca:ram stack[-1].compound_vector.0_0_8.x 1000
execute store result storage ca:ram stack[-1].compound_vector.0_0_-8.y float -0.001 run \
    data get storage ca:ram stack[-1].compound_vector.0_0_8.y 1000
execute store result storage ca:ram stack[-1].compound_vector.0_0_-8.z float -0.001 run \
    data get storage ca:ram stack[-1].compound_vector.0_0_8.z 1000

execute store result storage ca:ram stack[-1].compound_vector.-8_-8_-8.x float -0.001 run \
    data get storage ca:ram stack[-1].compound_vector.8_8_8.x 1000
execute store result storage ca:ram stack[-1].compound_vector.-8_-8_-8.y float -0.001 run \
    data get storage ca:ram stack[-1].compound_vector.8_8_8.y 1000
execute store result storage ca:ram stack[-1].compound_vector.-8_-8_-8.z float -0.001 run \
    data get storage ca:ram stack[-1].compound_vector.8_8_8.z 1000




execute store result storage ca:ram stack[-1].compound_vector.translation.extra_x float 0.001 run \
    data get storage ca:ram stack[-1].compound_vector.1_1_1.x 500
execute store result storage ca:ram stack[-1].compound_vector.translation.extra_y float 0.001 run \
    data get storage ca:ram stack[-1].compound_vector.1_1_1.y 500
execute store result storage ca:ram stack[-1].compound_vector.translation.extra_z float 0.001 run \
    data get storage ca:ram stack[-1].compound_vector.1_1_1.z 500

scoreboard players set #1000 ca.ml.arc_glm.fun 1000

execute if entity @s[tag=!platform] on passengers \
    at @s[tag=ca.ml.arc_glm.djt_blk.snapper,tag=snapped] \
    run function ca:ml/arc_glm/tasks/private/get_translation

execute \
    if entity @s[tag=!complete] \
    if predicate {                                  \
            "condition": "minecraft:entity_properties",     \
            "entity": "this",                               \
            "predicate": {                                  \
                "periodic_tick": 3                          \
            }                                               \
        } on passengers if entity @s[tag=jigsaw_information] run \
        function ca:ml/arc_glm/tasks/private/jigsaw_call

# ===============================================================================================================================

execute if entity @s[tag=!update] \
    if score @s ca.ml.arc_glm.previous_rotation.x = @s ca.ml.arc_glm.rotation.x \
    if score @s ca.ml.arc_glm.previous_rotation.y = @s ca.ml.arc_glm.rotation.y \
    if score @s ca.ml.arc_glm.previous_rotation.z = @s ca.ml.arc_glm.rotation.z run \
        return run function ca:gnr_lay/delete/int

execute if entity @s[tag=complete] \
    on passengers if entity @s[tag=ca.ml.arc_glm.djt_blk.snapper,tag=!snapped] run \
        ride @s dismount

execute store success storage ca:ram stack[-1].test.update byte 1 if entity @s[tag=update]

tag @s remove update

scoreboard players operation @s ca.ml.arc_glm.previous_rotation.x = @s ca.ml.arc_glm.rotation.x
scoreboard players operation @s ca.ml.arc_glm.previous_rotation.y = @s ca.ml.arc_glm.rotation.y
scoreboard players operation @s ca.ml.arc_glm.previous_rotation.z = @s ca.ml.arc_glm.rotation.z

data modify storage ca:ram stack[-1].gimbal set value [ 0.0f , 0.0f , 0.0f ]

execute store result storage ca:ram stack[-1].gimbal[0] float 0.001 run scoreboard players get @s ca.ml.arc_glm.rotation.x
execute store result storage ca:ram stack[-1].gimbal[1] float 0.001 run scoreboard players get @s ca.ml.arc_glm.rotation.y
execute store result storage ca:ram stack[-1].gimbal[2] float 0.001 run scoreboard players get @s ca.ml.arc_glm.rotation.z

# ===============================================================================================================================

function ca:qtn/gimbal/convert

data modify storage ca:ram stack[-1].result append from storage ca:ram stack[-1].result[0]
data remove storage ca:ram stack[-1].result[0]

execute store result score #$.translation.start_x ca.ml.arc_glm.fun run \
    data get storage ca:ram stack[-1].vectors.translation[0] 1000
execute store result score #$.translation.start_y ca.ml.arc_glm.fun run \
    data get storage ca:ram stack[-1].vectors.translation[1] 1000
execute store result score #$.translation.start_z ca.ml.arc_glm.fun run \
    data get storage ca:ram stack[-1].vectors.translation[2] 1000


execute store result score #$.vector.tmp.1_0_0.x ca.ml.arc_glm.fun run data get storage ca:ram stack[-1].vectors.1_0_0[0] 1000
execute store result score #$.vector.tmp.1_0_0.y ca.ml.arc_glm.fun run data get storage ca:ram stack[-1].vectors.1_0_0[1] 1000
execute store result score #$.vector.tmp.1_0_0.z ca.ml.arc_glm.fun run data get storage ca:ram stack[-1].vectors.1_0_0[2] 1000

execute store result score #$.vector.tmp.0_1_0.x ca.ml.arc_glm.fun run data get storage ca:ram stack[-1].vectors.0_1_0[0] 1000
execute store result score #$.vector.tmp.0_1_0.y ca.ml.arc_glm.fun run data get storage ca:ram stack[-1].vectors.0_1_0[1] 1000
execute store result score #$.vector.tmp.0_1_0.z ca.ml.arc_glm.fun run data get storage ca:ram stack[-1].vectors.0_1_0[2] 1000

execute store result score #$.vector.tmp.0_0_1.x ca.ml.arc_glm.fun run data get storage ca:ram stack[-1].vectors.0_0_1[0] 1000
execute store result score #$.vector.tmp.0_0_1.y ca.ml.arc_glm.fun run data get storage ca:ram stack[-1].vectors.0_0_1[1] 1000
execute store result score #$.vector.tmp.0_0_1.z ca.ml.arc_glm.fun run data get storage ca:ram stack[-1].vectors.0_0_1[2] 1000

execute on passengers if entity @s[tag=ca.ml.arc_glm.djt_blk.snapper] run \
        function ca:ml/arc_glm/tasks/private/transformation

# ===============================================================================================================================

function ca:gnr_lay/delete/int

# ===============================================================================================================================
