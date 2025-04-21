
execute \
    if data storage ca:ram stack[-1].block_iterated{type:"block"} run \
        tag @s add block
execute \
    if data storage ca:ram stack[-1].block_iterated{type:"stairs"} run \
        tag @s add stairs
execute \
    if data storage ca:ram stack[-1].block_iterated{type:"slab"} run \
        tag @s add slab
execute \
    if data storage ca:ram stack[-1].block_iterated{type:"wall"} run \
        tag @s add wall

ride @s mount @e[type=block_display,distance=..1,tag=tmp,tag=jigsaw,limit=1]
tag @s add ca.ml.arc_glm.djt_blk.snapper
tag @s add snapped
return 1

