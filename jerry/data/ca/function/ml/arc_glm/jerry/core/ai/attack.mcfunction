

execute store result score #$.count ca.ml.arc_glm.fun if entity @e[tag=cube_2x2,tag=jigsaw,limit=3]

execute if predicate {                          \
        condition: "minecraft:random_chance",   \
        chance: 0.0059                          \
    } unless score #$.count ca.ml.arc_glm.fun matches 3 \
    at @s unless entity @e[distance=..6,tag=cube_2x2,tag=jigsaw,limit=1] run \
    function ca:ml/arc_glm/jerry/core/ai/cube_2x2




