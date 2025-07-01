
execute on passengers run scoreboard players operation #$.translation.tmp.x ca.ml.arc_glm.fun = @s ca.ml.arc_glm.translation.x
execute on passengers run scoreboard players operation #$.translation.tmp.y ca.ml.arc_glm.fun = @s ca.ml.arc_glm.translation.y
execute on passengers run scoreboard players operation #$.translation.tmp.z ca.ml.arc_glm.fun = @s ca.ml.arc_glm.translation.z

scoreboard players operation #$.translation.tmp.x ca.ml.arc_glm.fun /= #1000 ca.ml.arc_glm.fun
scoreboard players operation #$.translation.tmp.y ca.ml.arc_glm.fun /= #1000 ca.ml.arc_glm.fun
scoreboard players operation #$.translation.tmp.z ca.ml.arc_glm.fun /= #1000 ca.ml.arc_glm.fun

execute on origin positioned ~ ~-0.5 ~ run \
    function ca:ml/arc_glm/tasks/private/jigsaw_hitbox with storage ca:ram stack[-1].compound_vector.translation

