

function ca:gnr_lay/new/ext



$data modify storage ca:ram stack[-1].jigsaw.arrangement set value $(arrangement)
$data modify storage ca:ram stack[-1].jigsaw.id set value "$(id)"

execute store result score @s ca.ml.arc_glm.count.block run data get storage ca:ram stack[-1].jigsaw.sneak_peek.block
execute store result score @s ca.ml.arc_glm.count.stairs run data get storage ca:ram stack[-1].jigsaw.sneak_peek.stairs
execute store result score @s ca.ml.arc_glm.count.slab run data get storage ca:ram stack[-1].jigsaw.sneak_peek.slab
execute store result score @s ca.ml.arc_glm.count.wall run data get storage ca:ram stack[-1].jigsaw.sneak_peek.wall





summon minecraft:block_display ~ ~ ~ {          \
    Passengers: [                               \
        {                                       \
            id: "minecraft:marker",             \
            Tags: [ "jigsaw_information" ]      \
        },                                      \
        {                                       \
            id: "minecraft:block_display",      \
            Tags: [ "block_mount" ]             \
        },                                      \
    ],                                          \
    Tags: [ "tmp" , "jigsaw" ],                 \
    teleport_duration: 1                        \
}

$tag @e[tag=tmp,limit=1] add $(id)
tag @e[tag=tmp,limit=1] add platform

scoreboard players operation @e[tag=tmp,limit=1] ca.ml.arc_glm.id = #$.id ca.ml.arc_glm.fun

execute as @e[tag=tmp,limit=1] if function ca:ml/arc_glm/new/private/jigsaw run tag @s remove tmp


function ca:gnr_lay/delete/ext



