
scoreboard players remove #$.translation.tmp.x ca.ml.arc_glm.fun 4
scoreboard players remove #$.translation.tmp.y ca.ml.arc_glm.fun 4
scoreboard players remove #$.translation.tmp.z ca.ml.arc_glm.fun 4

$execute positioned ~$(x) ~$(y) ~$(z) run function ca:ml/arc_glm/tasks/private/iterate/4
