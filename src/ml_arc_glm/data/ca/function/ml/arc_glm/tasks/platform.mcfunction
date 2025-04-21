

function ca:gnr_lay/new/int

scoreboard players operation #$.id ca.ml.arc_glm.fun = @s ca.ml.arc_glm.id

execute \
    if entity \
    @e[tag=ca.ml.arc_glm.core,scores={ca.ml.arc_glm.disturbance=0..},predicate=ca:ml/arc_glm/djt_blk/match_id,limit=1] \
        run return run function ca:gnr_lay/delete/int

tag @s remove awaken

execute align xyz positioned ~.5 ~ ~.5 run \
    function ca:ml/arc_glm/new/platform_jigsaw with entity @s data


function ca:gnr_lay/delete/int

