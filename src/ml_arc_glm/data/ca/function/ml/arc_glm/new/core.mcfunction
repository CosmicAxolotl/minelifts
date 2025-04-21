
function ca:gnr_lay/new/ext

$data modify storage ca:ram stack[-1].platform set from storage ca:ml/arc_glm/platforms "$(id)"

execute store result score #$.elements ca.ml.arc_glm.fun \
    if data storage ca:ram stack[-1].platform.arrangement[{type:"core"}]

execute if score #$.elements ca.ml.arc_glm.fun matches ..0 run \
    return run function ca:gnr_lay/delete/ext

data modify storage ca:ram stack[-1].jigsaw set from storage ca:ram stack[-1].platform

summon minecraft:marker ~ ~ ~ {                     \
    Tags: ["ca.ml.arc_glm.pltf", "tmp"]             \
}

$tag @e[tag=tmp,limit=1] add $(id)



execute align xyz positioned ~0.5 ~ ~0.5 run \
    summon minecraft:block_display ~ ~ ~ {                              \
        Passengers: [                                                   \
            {                                                           \
                id: "minecraft:marker",                                 \
                Tags: [ "jigsaw_information" ]                          \
            },                                                          \
            {                                                           \
                id: "minecraft:block_display",                          \
                Tags: [ "block_mount", "tmp" ]                          \
            },                                                          \
        ],                                                              \
        Tags: [ "tmp" , "platform", "jigsaw", "complete" , "static"],   \
        teleport_duration: 1                                            \
    }


$tag @e[tag=tmp,tag=jigsaw,limit=1] add $(id)

function ca:ml/arc_glm/new/private/core/id_alloc

execute store result storage ca:ram stack[-1].platform_id int 1 run scoreboard players get #$.id ca.ml.arc_glm.fun
execute as @e[tag=tmp,tag=jigsaw,limit=1] run function ca:ml/arc_glm/new/private/jigsaw

data modify entity @e[tag=tmp,tag=ca.ml.arc_glm.pltf,limit=1] data set from storage ca:ram stack[-1].jigsaw

execute as @e[tag=tmp,tag=jigsaw,limit=1] at @s run function ca:ml/arc_glm/new/private/iterate
execute store result score @e[tag=tmp,tag=ca.ml.arc_glm.pltf,limit=1] ca.ml.arc_glm.id run \
    data get storage ca:ram stack[-1].platform_id
execute store result score @e[tag=tmp,tag=jigsaw,limit=1] ca.ml.arc_glm.id run \
    data get storage ca:ram stack[-1].platform_id

tag @e remove tmp

function ca:gnr_lay/delete/ext