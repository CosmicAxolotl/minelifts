

function ca:gnr_lay/new/int

scoreboard players operation #$.id ca.ml.arc_glm.fun = @s ca.ml.arc_glm.id
execute \
    if function ca:ml/arc_glm/tasks/sleep_attempt_platform run \
    return run function ca:gnr_lay/delete/int

execute unless entity @e[tag=ca.ml.arc_glm.core,tag=awaken,predicate=ca:ml/arc_glm/djt_blk/match_id,limit=1] run \
    return run function ca:gnr_lay/delete/int

execute as @e[tag=ca.ml.arc_glm.core,predicate=ca:ml/arc_glm/djt_blk/match_id] run \
    function ca:ml/arc_glm/tasks/core/awake
execute as @e[tag=jigsaw,tag=platform,predicate=ca:ml/arc_glm/djt_blk/match_id] run \
    function ca:ml/arc_glm/delete/jigsaw

tag @s add awaken

function ca:gnr_lay/delete/int

