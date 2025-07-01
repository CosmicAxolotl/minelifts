
execute positioned as @s[distance=..32] run \
    function ca:ml/arc_glm/tasks/disjointed_block/facing

execute positioned as @s[distance=32..] run \
    tp @s ^ ^0.3 ^2 ~4 ~

execute \
    if entity @s[distance=..3] \
    if function ca:ml/arc_glm/tasks/private/snap \
        as @e[type=area_effect_cloud,tag=ca.ml.arc_glm.djt_blk.snapper,distance=..3,tag=tmp,limit=1] run \
            return run function ca:ml/arc_glm/structure/snap

execute at @s[tag=!snapped] run \
    function ca:ml/arc_glm/tasks/disjointed_block
