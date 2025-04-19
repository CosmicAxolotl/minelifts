
data modify storage ca:ram stack[-1].platform.arrangement append value {type: "AIR"}

execute if block ~ ~ ~ minecraft:bedrock run \
    data modify storage ca:ram stack[-1].platform.arrangement[-1] set value { type: "core",  pos: [ 0.0f , 0.0f, 0.0f ] }

execute if block ~ ~ ~ #ca:ml/arc_glm/block run \
    data modify storage ca:ram stack[-1].platform.arrangement[-1] set value { type: "block",  pos: [ 0.0f , 0.0f, 0.0f ] }

execute if block ~ ~ ~ #minecraft:stairs run \
    function ca:ml/arc_glm/platform/private/serialise/block_type/stairs

execute if block ~ ~ ~ #minecraft:slabs run \
    function ca:ml/arc_glm/platform/private/serialise/block_type/slab

execute if block ~ ~ ~ #minecraft:walls run \
    function ca:ml/arc_glm/platform/private/serialise/block_type/wall


scoreboard players operation #$.translation.x ca.ml.arc_glm.fun = #$.iterate.x ca.ml.arc_glm.fun
scoreboard players operation #$.translation.y ca.ml.arc_glm.fun = #$.iterate.y ca.ml.arc_glm.fun
scoreboard players operation #$.translation.z ca.ml.arc_glm.fun = #$.iterate.z ca.ml.arc_glm.fun

scoreboard players operation #$.translation.x ca.ml.arc_glm.fun *= #1000 ca.ml.arc_glm.fun
scoreboard players operation #$.translation.y ca.ml.arc_glm.fun *= #1000 ca.ml.arc_glm.fun
scoreboard players operation #$.translation.z ca.ml.arc_glm.fun *= #1000 ca.ml.arc_glm.fun

scoreboard players operation #$.translation.x ca.ml.arc_glm.fun -= #$.pivot.x ca.ml.arc_glm.fun
scoreboard players operation #$.translation.y ca.ml.arc_glm.fun -= #$.pivot.y ca.ml.arc_glm.fun
scoreboard players operation #$.translation.z ca.ml.arc_glm.fun -= #$.pivot.z ca.ml.arc_glm.fun


execute store result storage ca:ram stack[-1].platform.arrangement[-1].pos[0] float 0.001 run \
    scoreboard players get #$.translation.x ca.ml.arc_glm.fun

execute store result storage ca:ram stack[-1].platform.arrangement[-1].pos[1] float 0.001 run \
    scoreboard players get #$.translation.y ca.ml.arc_glm.fun

execute store result storage ca:ram stack[-1].platform.arrangement[-1].pos[2] float 0.001 run \
    scoreboard players get #$.translation.z ca.ml.arc_glm.fun


scoreboard players add #$.iterate.x ca.ml.arc_glm.fun 1
tp @s ~1 ~ ~

execute if score #$.iterate.x ca.ml.arc_glm.fun > #$.size.x ca.ml.arc_glm.fun run \
    scoreboard players add #$.iterate.z ca.ml.arc_glm.fun 1

execute if score #$.iterate.x ca.ml.arc_glm.fun > #$.size.x ca.ml.arc_glm.fun run \
    tp @s 0 ~ ~1

execute if score #$.iterate.x ca.ml.arc_glm.fun > #$.size.x ca.ml.arc_glm.fun run \
    scoreboard players set #$.iterate.x ca.ml.arc_glm.fun 0


execute if score #$.iterate.z ca.ml.arc_glm.fun > #$.size.z ca.ml.arc_glm.fun run \
    scoreboard players add #$.iterate.y ca.ml.arc_glm.fun 1

execute if score #$.iterate.z ca.ml.arc_glm.fun > #$.size.z ca.ml.arc_glm.fun run \
    tp @s 0 ~1 0

execute if score #$.iterate.z ca.ml.arc_glm.fun > #$.size.z ca.ml.arc_glm.fun run \
    scoreboard players set #$.iterate.x ca.ml.arc_glm.fun 0

execute if score #$.iterate.z ca.ml.arc_glm.fun > #$.size.z ca.ml.arc_glm.fun run \
    scoreboard players set #$.iterate.z ca.ml.arc_glm.fun 0


execute if score #$.iterate.y ca.ml.arc_glm.fun > #$.size.y ca.ml.arc_glm.fun run return run kill @s

execute at @s run \
    function ca:ml/arc_glm/platform/private/serialise/iterate
