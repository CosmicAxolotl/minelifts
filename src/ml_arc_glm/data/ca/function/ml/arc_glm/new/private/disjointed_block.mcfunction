
# ===============================================================================================================================

execute store result score @s ca.ml.arc_glm.random_rot.x run random value -1000..1000
execute store result score @s ca.ml.arc_glm.random_rot.y run random value -1000..1000
execute store result score @s ca.ml.arc_glm.random_rot.z run random value -1000..1000

# ===============================================================================================================================

execute if predicate {                  \
        "condition":"random_chance",    \
        chance:0.5                      \
    } run tag @s add ca.ml.arc_glm.rot.x_inv

execute if predicate {                  \
        "condition":"random_chance",    \
        chance:0.5                      \
    } run tag @s add ca.ml.arc_glm.rot.y_inv

execute if predicate {                  \
        "condition":"random_chance",    \
        chance:0.5                      \
    } run tag @s add ca.ml.arc_glm.rot.z_inv

function ca:ml/arc_glm/new/private/disjointed_block/id_alloc
scoreboard players operation @s ca.ml.arc_glm.id = #$.id ca.ml.arc_glm.fun 

tp @s ~ ~ ~ ~ ~

# ===============================================================================================================================

return 1

# ===============================================================================================================================
