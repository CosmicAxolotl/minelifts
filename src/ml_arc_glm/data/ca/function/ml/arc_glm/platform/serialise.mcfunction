
function ca:gnr_lay/new/int


$scoreboard players set #$.size.x ca.ml.arc_glm.fun $(size_x)
$scoreboard players set #$.size.y ca.ml.arc_glm.fun $(size_y)
$scoreboard players set #$.size.z ca.ml.arc_glm.fun $(size_z)

$data modify storage ca:ram stack[-1].pivot set value [$(size_x), $(size_y), $(size_z)]


scoreboard players set #1000 ca.ml.arc_glm.fun 1000

execute store result score #$.pivot.x ca.ml.arc_glm.fun run data get storage ca:ram stack[-1].pivot[0] 500
execute store result score #$.pivot.y ca.ml.arc_glm.fun run data get storage ca:ram stack[-1].pivot[1] 0
execute store result score #$.pivot.z ca.ml.arc_glm.fun run data get storage ca:ram stack[-1].pivot[2] 500



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

data modify storage ca:ram stack[-1].platform set value {   \
    arrangement: []                                         \
}


execute positioned 0 0 0 summon marker at @s run \
    function ca:ml/arc_glm/platform/private/serialise/iterate

data remove storage ca:ram stack[-1].platform.arrangement[{type:"AIR"}]

$data modify storage ca:ram stack[-1].platform.pallete set value $(pallete)
$data modify storage ca:ram stack[-1].platform.id set value "$(id)"

$data modify storage ca:ml/arc_glm/platforms $(id) set from storage ca:ram stack[-1].platform

function ca:gnr_lay/delete/int

