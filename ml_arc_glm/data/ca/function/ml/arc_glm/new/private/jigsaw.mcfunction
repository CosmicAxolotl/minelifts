

scoreboard players set @s ca.ml.arc_glm.rotation.x 0
scoreboard players set @s ca.ml.arc_glm.rotation.y 0
scoreboard players set @s ca.ml.arc_glm.rotation.z 0

execute store result score @s ca.ml.arc_glm.translation.x run data get storage ca:ram stack[-1].jigsaw.translation[0] 1000
execute store result score @s ca.ml.arc_glm.translation.y run data get storage ca:ram stack[-1].jigsaw.translation[1] 1000
execute store result score @s ca.ml.arc_glm.translation.z run data get storage ca:ram stack[-1].jigsaw.translation[2] 1000

data modify storage ca:ram stack[-1].jigsaw.pool.block append from storage ca:ram stack[-1].jigsaw.arrangement[{type:"block"}]
data modify storage ca:ram stack[-1].jigsaw.pool.stairs append from storage ca:ram stack[-1].jigsaw.arrangement[{type:"stairs"}]
data modify storage ca:ram stack[-1].jigsaw.pool.slab append from storage ca:ram stack[-1].jigsaw.arrangement[{type:"slab"}]
data modify storage ca:ram stack[-1].jigsaw.pool.wall append from storage ca:ram stack[-1].jigsaw.arrangement[{type:"wall"}]

execute on passengers run data modify entity @s[tag=jigsaw_information] data set from storage ca:ram stack[-1].jigsaw


return 1



