

execute store result score #$.id ca.ml.arc_glm.fun run random value -16000000..16000000

execute if entity @e[predicate=ca:ml/arc_glm/djt_blk/match_id, limit=1] run \
    function ca:ml/arc_glm/new/private/disjointed_block/id_alloc

