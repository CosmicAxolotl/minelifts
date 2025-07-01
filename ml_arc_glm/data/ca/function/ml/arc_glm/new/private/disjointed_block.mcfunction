
# ===============================================================================================================================

execute store result score @s ca.ml.arc_glm.random_rot.x run random value -12000..12000
execute store result score @s ca.ml.arc_glm.random_rot.y run random value -12000..12000
execute store result score @s ca.ml.arc_glm.random_rot.z run random value -12000..12000

# ===============================================================================================================================

function ca:gnr_lay/new/int

execute store result storage ca:ram stack[-1].gimbal[0] float 0.001 run random value 1..360000
execute store result storage ca:ram stack[-1].gimbal[1] float 0.001 run random value 1..360000
execute store result storage ca:ram stack[-1].gimbal[2] float 0.001 run random value 1..360000

function ca:qtn/gimbal/convert

execute store result score @s ca.ml.arc_glm.previous_rotation.r run data get storage ca:ram stack[-1].result[0] 1000
execute store result score @s ca.ml.arc_glm.previous_rotation.x run data get storage ca:ram stack[-1].result[1] 1000
execute store result score @s ca.ml.arc_glm.previous_rotation.y run data get storage ca:ram stack[-1].result[2] 1000
execute store result score @s ca.ml.arc_glm.previous_rotation.z run data get storage ca:ram stack[-1].result[3] 1000

function ca:gnr_lay/delete/int

function ca:ml/arc_glm/new/private/disjointed_block/id_alloc
scoreboard players operation @s ca.ml.arc_glm.id = #$.id ca.ml.arc_glm.fun 

tp @s ~ ~ ~ ~ ~

# ===============================================================================================================================

return 1

# ===============================================================================================================================
