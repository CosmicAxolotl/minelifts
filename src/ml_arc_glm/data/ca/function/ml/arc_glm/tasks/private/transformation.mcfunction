
function ca:gnr_lay/new/int

data modify storage ca:ram stack[-1].quaternions append from storage ca:ram stack[-2].result
data modify storage ca:ram stack[-1].quaternions append value [0.0f, 0.0f, 0.0f, 0.0f]
data modify storage ca:ram stack[-1].quaternions append from storage ca:ram stack[-2].result

execute store result storage ca:ram stack[-1].quaternions[1][1] float 0.001 run scoreboard players get @s ca.ml.arc_glm.count.translation.x
execute store result storage ca:ram stack[-1].quaternions[1][2] float 0.001 run scoreboard players get @s ca.ml.arc_glm.count.translation.y
execute store result storage ca:ram stack[-1].quaternions[1][3] float 0.001 run scoreboard players get @s ca.ml.arc_glm.count.translation.z


## calculate conjugate of rotation quaternion, nerd stuff basically
execute store result storage ca:ram stack[-1].quaternions[2][1] float 0.001 run \
    data get storage ca:ram stack[-1].quaternions[2][1] -1000
execute store result storage ca:ram stack[-1].quaternions[2][2] float 0.001 run \
    data get storage ca:ram stack[-1].quaternions[2][2] -1000
execute store result storage ca:ram stack[-1].quaternions[2][3] float 0.001 run \
    data get storage ca:ram stack[-1].quaternions[2][3] -1000

function ca:qtn/operation/product

data modify storage ca:ram stack[-1].entity set value {     \
    transformation: {                                       \
        left_rotation: [],                                  \
        right_rotation:[0f, 0f, 0f, 1f],                    \
        translation: []                                     \
    },                                                      \
    interpolation_duration: 1                               \
}

data modify storage ca:ram stack[-1].entity.transformation.left_rotation set from storage ca:ram stack[-2].result

data modify storage ca:ram stack[-1].entity.transformation.translation set from storage ca:ram stack[-1].result
data remove storage ca:ram stack[-1].entity.transformation.translation[0]

data modify storage ca:ram stack[-1].entity.transformation.left_rotation append from storage ca:ram stack[-1].entity.transformation.left_rotation[0]
data remove storage ca:ram stack[-1].entity.transformation.left_rotation[0]

execute if data storage ca:ram stack[-2].test{update:true} run data modify storage ca:ram stack[-1].entity.interpolation_duration set value 0

data modify entity @s {} merge from storage ca:ram stack[-1].entity


function ca:gnr_lay/delete/int

