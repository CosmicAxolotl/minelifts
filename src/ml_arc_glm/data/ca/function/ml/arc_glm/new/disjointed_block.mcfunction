
# ===============================================================================================================================

function ca:gnr_lay/new/ext

# ===============================================================================================================================

$summon minecraft:block_display ~ ~ ~ {             \
    Tags: [ "ca.ml.arc_glm.djt_blk" , "tmp" ],      \
    block_state: {                                  \
        Name: "$(id)"                               \
    },                                              \
    interpolation_duration: 4,                      \
    teleport_duration: 4                            \
}

$data modify storage ca:ram stack[-1].id set value "$(id)"

execute as @e[tag=tmp,limit=1] if function ca:ml/arc_glm/new/private/disjointed_block run tag @s remove tmp

# ===============================================================================================================================

summon minecraft:interaction ~ ~ ~ {                            \
    Tags: [ "ca.ml.arc_glm.djt_blk.snapper" , "tmp" ],        \
}

execute as @e[tag=tmp,limit=1] run \
    scoreboard players operation @s ca.ml.arc_glm.id = #$.id ca.ml.arc_glm.fun

execute as @e[tag=tmp,limit=1] run function ca:ml/arc_glm/new/private/disjointed_block/block_type
tag @e remove tmp

# ===============================================================================================================================

function ca:gnr_lay/delete/ext

# ===============================================================================================================================
