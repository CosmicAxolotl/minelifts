

execute \
    if entity \
    @e[tag=ca.ml.arc_glm.core,tag=awaken,scores={ca.ml.arc_glm.disturbance=0..},predicate=ca:ml/arc_glm/djt_blk/match_id,limit=1] run \
        return fail

execute \
    as @e[tag=jigsaw,tag=complete,tag=!static,predicate=ca:ml/arc_glm/djt_blk/match_id,limit=1] \
        run function ca:ml/arc_glm/tasks/platform/finish_slumber

return 1
