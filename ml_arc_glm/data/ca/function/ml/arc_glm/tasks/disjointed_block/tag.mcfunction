
tag @s add already_checked

execute facing entity @s[distance=..32] feet as @e[tag=tmp,tag=ca.ml.arc_glm.djt_blk,limit=1] run \
    function ca:ml/arc_glm/tasks/disjointed_block/facing

execute facing entity @s[distance=32..] feet as @e[tag=tmp,tag=ca.ml.arc_glm.djt_blk,limit=1] run \
    tp @s ^ ^0.3 ^2 ~4 ~


tag @s remove tmp