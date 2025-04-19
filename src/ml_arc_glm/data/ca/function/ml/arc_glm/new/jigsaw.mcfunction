

function ca:gnr_lay/new/ext



$data modify storage ca:ram stack[-1].jigsaw set from storage ca:ml/arc_glm/structures $(id)
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

execute as @e[tag=tmp,limit=1] if function ca:ml/arc_glm/new/private/jigsaw run tag @s remove tmp


function ca:gnr_lay/delete/ext



