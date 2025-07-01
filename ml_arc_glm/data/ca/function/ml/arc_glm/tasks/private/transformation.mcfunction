
function ca:gnr_lay/new/int



execute on passengers run scoreboard players operation #$.translation.tmp.x ca.ml.arc_glm.fun = @s ca.ml.arc_glm.translation.x
execute on passengers run scoreboard players operation #$.translation.tmp.y ca.ml.arc_glm.fun = @s ca.ml.arc_glm.translation.y
execute on passengers run scoreboard players operation #$.translation.tmp.z ca.ml.arc_glm.fun = @s ca.ml.arc_glm.translation.z

scoreboard players operation #$.translation.tmp.x ca.ml.arc_glm.fun /= #1000 ca.ml.arc_glm.fun
scoreboard players operation #$.translation.tmp.y ca.ml.arc_glm.fun /= #1000 ca.ml.arc_glm.fun
scoreboard players operation #$.translation.tmp.z ca.ml.arc_glm.fun /= #1000 ca.ml.arc_glm.fun

scoreboard players operation #$.translation.x ca.ml.arc_glm.fun = #$.translation.start_x ca.ml.arc_glm.fun
scoreboard players operation #$.translation.y ca.ml.arc_glm.fun = #$.translation.start_y ca.ml.arc_glm.fun
scoreboard players operation #$.translation.z ca.ml.arc_glm.fun = #$.translation.start_z ca.ml.arc_glm.fun




scoreboard players operation #$.vector.x ca.ml.arc_glm.fun = #$.vector.tmp.1_0_0.x ca.ml.arc_glm.fun
scoreboard players operation #$.vector.y ca.ml.arc_glm.fun = #$.vector.tmp.1_0_0.y ca.ml.arc_glm.fun
scoreboard players operation #$.vector.z ca.ml.arc_glm.fun = #$.vector.tmp.1_0_0.z ca.ml.arc_glm.fun

scoreboard players operation #$.vector.x ca.ml.arc_glm.fun *= #$.translation.tmp.x ca.ml.arc_glm.fun
scoreboard players operation #$.vector.y ca.ml.arc_glm.fun *= #$.translation.tmp.x ca.ml.arc_glm.fun
scoreboard players operation #$.vector.z ca.ml.arc_glm.fun *= #$.translation.tmp.x ca.ml.arc_glm.fun

scoreboard players operation #$.translation.x ca.ml.arc_glm.fun += #$.vector.x ca.ml.arc_glm.fun
scoreboard players operation #$.translation.y ca.ml.arc_glm.fun += #$.vector.y ca.ml.arc_glm.fun
scoreboard players operation #$.translation.z ca.ml.arc_glm.fun += #$.vector.z ca.ml.arc_glm.fun




scoreboard players operation #$.vector.x ca.ml.arc_glm.fun = #$.vector.tmp.0_1_0.x ca.ml.arc_glm.fun
scoreboard players operation #$.vector.y ca.ml.arc_glm.fun = #$.vector.tmp.0_1_0.y ca.ml.arc_glm.fun
scoreboard players operation #$.vector.z ca.ml.arc_glm.fun = #$.vector.tmp.0_1_0.z ca.ml.arc_glm.fun

scoreboard players operation #$.vector.x ca.ml.arc_glm.fun *= #$.translation.tmp.y ca.ml.arc_glm.fun
scoreboard players operation #$.vector.y ca.ml.arc_glm.fun *= #$.translation.tmp.y ca.ml.arc_glm.fun
scoreboard players operation #$.vector.z ca.ml.arc_glm.fun *= #$.translation.tmp.y ca.ml.arc_glm.fun

scoreboard players operation #$.translation.x ca.ml.arc_glm.fun += #$.vector.x ca.ml.arc_glm.fun
scoreboard players operation #$.translation.y ca.ml.arc_glm.fun += #$.vector.y ca.ml.arc_glm.fun
scoreboard players operation #$.translation.z ca.ml.arc_glm.fun += #$.vector.z ca.ml.arc_glm.fun




scoreboard players operation #$.vector.x ca.ml.arc_glm.fun = #$.vector.tmp.0_0_1.x ca.ml.arc_glm.fun
scoreboard players operation #$.vector.y ca.ml.arc_glm.fun = #$.vector.tmp.0_0_1.y ca.ml.arc_glm.fun
scoreboard players operation #$.vector.z ca.ml.arc_glm.fun = #$.vector.tmp.0_0_1.z ca.ml.arc_glm.fun

scoreboard players operation #$.vector.x ca.ml.arc_glm.fun *= #$.translation.tmp.z ca.ml.arc_glm.fun
scoreboard players operation #$.vector.y ca.ml.arc_glm.fun *= #$.translation.tmp.z ca.ml.arc_glm.fun
scoreboard players operation #$.vector.z ca.ml.arc_glm.fun *= #$.translation.tmp.z ca.ml.arc_glm.fun

scoreboard players operation #$.translation.x ca.ml.arc_glm.fun += #$.vector.x ca.ml.arc_glm.fun
scoreboard players operation #$.translation.y ca.ml.arc_glm.fun += #$.vector.y ca.ml.arc_glm.fun
scoreboard players operation #$.translation.z ca.ml.arc_glm.fun += #$.vector.z ca.ml.arc_glm.fun


scoreboard players remove #$.translation.y ca.ml.arc_glm.fun 500



data modify storage ca:ram stack[-1].entity set value {     \
    transformation: {                                       \
        left_rotation: [],                                  \
        right_rotation:[0f, 0f, 0f, 1f],                    \
        translation: [0.0f, 0.0f, 0.0f]                     \
    },                                                      \
    interpolation_duration: 1,                              \
    Rotation: [0f, 0f]                                      \
}



execute store result storage ca:ram stack[-1].entity.transformation.translation[0] float 0.001 run \
    scoreboard players get #$.translation.x ca.ml.arc_glm.fun
execute store result storage ca:ram stack[-1].entity.transformation.translation[1] float 0.001 run \
    scoreboard players get #$.translation.y ca.ml.arc_glm.fun
execute store result storage ca:ram stack[-1].entity.transformation.translation[2] float 0.001 run \
    scoreboard players get #$.translation.z ca.ml.arc_glm.fun

data modify storage ca:ram stack[-1].entity.transformation.left_rotation set from storage ca:ram stack[-2].result

execute if data storage ca:ram stack[-2].test{update:true} run data modify storage ca:ram stack[-1].entity.interpolation_duration set value 0

execute on passengers on passengers run data modify entity @s[type=block_display] {} merge from storage ca:ram stack[-1].entity


function ca:gnr_lay/delete/int

