

# ===============================================================================================================================

data modify storage ca:ram stack[-1].quaternions[1] set value [0.0f, 1.0f, 1.0f, 1.0f]
function ca:qtn/operation/product
data remove storage ca:ram stack[-1].result[0]
data modify storage ca:ram stack[-1].vectors.1_1_1 set from storage ca:ram stack[-1].result

# ===============================================================================================================================

data modify storage ca:ram stack[-1].compound_vector.translation.x set from storage ca:ram stack[-1].vectors.translation[0]
data modify storage ca:ram stack[-1].compound_vector.translation.y set from storage ca:ram stack[-1].vectors.translation[1]
data modify storage ca:ram stack[-1].compound_vector.translation.z set from storage ca:ram stack[-1].vectors.translation[2]

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
