
execute \
    as @e[type=interaction,distance=..4,tag=tmp,tag=!idle,predicate=!ca:ml/arc_glm/djt_blk/is_snapping,limit=1] \
    on vehicle if entity @s[tag=!complete] \
        run return fail

tag @s add tmp

return 1

