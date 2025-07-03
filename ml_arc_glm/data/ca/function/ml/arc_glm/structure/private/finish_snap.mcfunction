

execute positioned as @s on vehicle rotated as @s run rotate @e[type=block_display, distance=..5, tag=tmp, tag=ca.ml.arc_glm.djt_blk, limit=1] ~ ~

execute on passengers run \
    tag @s add snapped

execute on passengers run \
    function ca:ml/arc_glm/structure/private/as_disjointed_block

