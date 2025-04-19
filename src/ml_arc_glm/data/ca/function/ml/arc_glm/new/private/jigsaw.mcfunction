

scoreboard players set @s ca.ml.arc_glm.rotation.x 0
scoreboard players set @s ca.ml.arc_glm.rotation.y 0
scoreboard players set @s ca.ml.arc_glm.rotation.z 0

data modify storage ca:ram stack[-1].jigsaw.pool.block append from storage ca:ram stack[-1].jigsaw.arrangement[{type:"block"}]
data modify storage ca:ram stack[-1].jigsaw.pool.stairs append from storage ca:ram stack[-1].jigsaw.arrangement[{type:"stairs"}]
data modify storage ca:ram stack[-1].jigsaw.pool.slab append from storage ca:ram stack[-1].jigsaw.arrangement[{type:"slab"}]
data modify storage ca:ram stack[-1].jigsaw.pool.wall append from storage ca:ram stack[-1].jigsaw.arrangement[{type:"wall"}]

execute on passengers run data modify entity @s[tag=jigsaw_information] data set from storage ca:ram stack[-1].jigsaw


return 1



