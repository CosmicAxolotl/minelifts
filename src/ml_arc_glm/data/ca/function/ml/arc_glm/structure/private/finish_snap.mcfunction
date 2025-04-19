

execute positioned as @s run ride @e[type=block_display, distance=..5, tag=tmp, tag=ca.ml.arc_glm.djt_blk, limit=1] mount @s
execute positioned as @s on vehicle rotated as @s run rotate @e[type=block_display, distance=..5, tag=tmp, tag=ca.ml.arc_glm.djt_blk, limit=1] ~ ~

tag @e[type=block_display, distance=..5, tag=tmp, tag=ca.ml.arc_glm.djt_blk, limit=1] add snapped

execute on passengers if entity @s[tag=tmp] run \
    function ca:ml/arc_glm/structure/private/as_disjointed_block