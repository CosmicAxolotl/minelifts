
scoreboard players add #$.translation.tmp.x ca.ml.arc_glm.fun 8
scoreboard players add #$.translation.tmp.y ca.ml.arc_glm.fun 8
scoreboard players add #$.translation.tmp.z ca.ml.arc_glm.fun 8

$execute positioned ~$(x) ~$(y) ~$(z) run function ca:ml/arc_glm/tasks/private/iterate/8
