
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

data merge entity @s {Age:-2147483648,Duration:-1,WaitTime:-2147483648,Color:0,Radius:0}

data modify entity @s Owner set from storage ca:ram stack[-1].uuid

ride @s mount @e[type=block_display,distance=..1,tag=tmp,tag=jigsaw,limit=1]

ride @e[type=block_display,tag=tmp,tag=ca.ml.arc_glm.djt_blk,tag=snapped,limit=1] mount @s
execute on passengers run tag @s remove tmp

tag @s add ca.ml.arc_glm.djt_blk.snapper
tag @s add snapped


return 1

