
scoreboard players set #$.health ca.ml.arc_glm.fun 0
execute \
    as @e[tag=ca.ml.arc_glm.core,predicate=ca:ml/arc_glm/djt_blk/match_id] run \
        function ca:ml/arc_glm/tasks/platform/get_health

$execute store result bossbar $(bossbar_id) value run scoreboard players get #$.health ca.ml.arc_glm.fun
