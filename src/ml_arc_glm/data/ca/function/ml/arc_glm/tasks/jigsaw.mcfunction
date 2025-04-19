

function ca:gnr_lay/new/int

# ===============================================================================================================================

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

execute on passengers if entity @s[tag=block_mount] on passengers run function ca:ml/arc_glm/tasks/private/transformation

# ===============================================================================================================================

function ca:gnr_lay/delete/int

# ===============================================================================================================================
