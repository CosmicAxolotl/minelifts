
function ca:gnr_lay/new/int


$scoreboard players set #$.size.x ca.ml.arc_glm.fun $(size_x)
$scoreboard players set #$.size.y ca.ml.arc_glm.fun $(size_y)
$scoreboard players set #$.size.z ca.ml.arc_glm.fun $(size_z)

$data modify storage ca:ram stack[-1].pivot set value [$(pivot_x), $(pivot_y), $(pivot_z)]


scoreboard players set #1000 ca.ml.arc_glm.fun 1000

execute store result score #$.pivot.x ca.ml.arc_glm.fun run data get storage ca:ram stack[-1].pivot[0] 1000
execute store result score #$.pivot.y ca.ml.arc_glm.fun run data get storage ca:ram stack[-1].pivot[1] 1000
execute store result score #$.pivot.z ca.ml.arc_glm.fun run data get storage ca:ram stack[-1].pivot[2] 1000



scoreboard players remove #$.size.x ca.ml.arc_glm.fun 1
scoreboard players remove #$.size.y ca.ml.arc_glm.fun 1
scoreboard players remove #$.size.z ca.ml.arc_glm.fun 1

scoreboard players set #$.sneak_peek.block ca.ml.arc_glm.fun 0
scoreboard players set #$.sneak_peek.stairs ca.ml.arc_glm.fun 0
scoreboard players set #$.sneak_peek.slab ca.ml.arc_glm.fun 0
scoreboard players set #$.sneak_peek.wall ca.ml.arc_glm.fun 0

scoreboard players set #$.iterate.x ca.ml.arc_glm.fun 0
scoreboard players set #$.iterate.y ca.ml.arc_glm.fun 0
scoreboard players set #$.iterate.z ca.ml.arc_glm.fun 0

data modify storage ca:ram stack[-1].structure set value {  \
    sneak_peek: {                                           \
        block:  0,                                          \
        stairs: 0,                                          \
        slab:   0,                                          \
        wall:   0,                                          \
    },                                                      \
    arrangement: []                                         \
}


execute positioned 0 0 0 summon marker at @s run \
    function ca:ml/arc_glm/structure/private/serialise/iterate

execute store result storage ca:ram stack[-1].structure.sneak_peek.block int 1 run \
    scoreboard players get #$.sneak_peek.block ca.ml.arc_glm.fun
execute store result storage ca:ram stack[-1].structure.sneak_peek.stairs int 1 run \
    scoreboard players get #$.sneak_peek.stairs ca.ml.arc_glm.fun
execute store result storage ca:ram stack[-1].structure.sneak_peek.slab int 1 run \
    scoreboard players get #$.sneak_peek.slab ca.ml.arc_glm.fun
execute store result storage ca:ram stack[-1].structure.sneak_peek.wall int 1 run \
    scoreboard players get #$.sneak_peek.wall ca.ml.arc_glm.fun

data remove storage ca:ram stack[-1].structure.arrangement[{type:"AIR"}]

$data modify storage ca:ml/arc_glm/structures $(id) set from storage ca:ram stack[-1].structure

function ca:gnr_lay/delete/int

