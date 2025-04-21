

function ca:gnr_lay/new/int

execute on passengers if entity @s[tag=block_mount] on passengers run function ca:ml/arc_glm/tasks/platform/set_blocks

execute as @e[tag=ca.ml.arc_glm.core,predicate=ca:ml/arc_glm/djt_blk/match_id] run \
    function ca:ml/arc_glm/tasks/platform/finish_slumber/core

tag @s add static

function ca:gnr_lay/delete/int

