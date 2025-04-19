

function ca:gnr_lay/new/int

data modify storage \
    ca:ram stack[-1].uuid set value \
        [I;0,0,0,0]

execute store result storage \
    ca:ram stack[-1].uuid[0] int 1 run \
    scoreboard players get @s ml.gnr.uuid_cache.0
execute store result storage \
    ca:ram stack[-1].uuid[1] int 1 run \
    scoreboard players get @s ml.gnr.uuid_cache.1
execute store result storage \
    ca:ram stack[-1].uuid[2] int 1 run \
    scoreboard players get @s ml.gnr.uuid_cache.2
execute store result storage \
    ca:ram stack[-1].uuid[3] int 1 run \
    scoreboard players get @s ml.gnr.uuid_cache.3

summon item_display ~ ~ ~ {                                         \
    Tags:["tmp","ca.dvg_abl.trail"],                                    \
    Passengers:[                                                        \
        {                                                               \
            id:"minecraft:snowball",                                    \
            Item:{                                                      \
                id:"minecraft:stone",                                   \
                count:1,                                                \
                components:{                                            \
                    "minecraft:item_model":"minecraft:air"              \
                }                                                       \
            }                                                           \
        }                                                               \
    ]                                                                   \
}

execute \
    as @e[tag=tmp,limit=1] \
    on passengers run \
        data modify entity @s Owner set from storage ca:ram stack[-1].uuid
scoreboard players set @e[tag=tmp,limit=1] ca.dvg_abl.cooldown -1
tag @e remove tmp

scoreboard players set #$.jump_strenght ca.dvg_abl.fun 0
attribute @s minecraft:movement_speed modifier add ca:dvg_abl.speed_boost 0.5 add_multiplied_base

execute \
    if block ~ ~1 ~ #ca:dvg_abl/air run \
        scoreboard players set #$.jump_strenght ca.dvg_abl.fun 0
execute \
    if score #$.jump_strenght ca.dvg_abl.fun matches 0 \
    if block ~ ~2 ~ #ca:dvg_abl/air run \
        scoreboard players set #$.jump_strenght ca.dvg_abl.fun 1
execute \
    if score #$.jump_strenght ca.dvg_abl.fun matches 1 \
    if block ~ ~3 ~ #ca:dvg_abl/air run \
        scoreboard players set #$.jump_strenght ca.dvg_abl.fun 2
execute \
    if score #$.jump_strenght ca.dvg_abl.fun matches 2 \
    if block ~ ~4 ~ #ca:dvg_abl/air run \
        scoreboard players set #$.jump_strenght ca.dvg_abl.fun 3
execute \
    if score #$.jump_strenght ca.dvg_abl.fun matches 3 \
    if block ~ ~5 ~ #ca:dvg_abl/air run \
        scoreboard players set #$.jump_strenght ca.dvg_abl.fun 4
execute \
    if score #$.jump_strenght ca.dvg_abl.fun matches 4 \
    if block ~ ~6 ~ #ca:dvg_abl/air run \
        scoreboard players set #$.jump_strenght ca.dvg_abl.fun 5
execute \
    if score #$.jump_strenght ca.dvg_abl.fun matches 5 \
    if block ~ ~7 ~ #ca:dvg_abl/air run \
        scoreboard players set #$.jump_strenght ca.dvg_abl.fun 6
execute \
    if score #$.jump_strenght ca.dvg_abl.fun matches 6 \
    if block ~ ~8 ~ #ca:dvg_abl/air run \
        scoreboard players set #$.jump_strenght ca.dvg_abl.fun 7

execute if score #$.jump_strenght ca.dvg_abl.fun matches 3 run \
    attribute @s minecraft:jump_strength modifier add ca:dvg_abl.jump_boost 0.35 add_multiplied_base

execute if score #$.jump_strenght ca.dvg_abl.fun matches 4 run \
    attribute @s minecraft:jump_strength modifier add ca:dvg_abl.jump_boost 0.60 add_multiplied_base

execute if score #$.jump_strenght ca.dvg_abl.fun matches 5 run \
    attribute @s minecraft:jump_strength modifier add ca:dvg_abl.jump_boost 0.85 add_multiplied_base

execute if score #$.jump_strenght ca.dvg_abl.fun matches 6 run \
    attribute @s minecraft:jump_strength modifier add ca:dvg_abl.jump_boost 1.10 add_multiplied_base

execute if score #$.jump_strenght ca.dvg_abl.fun matches 7 run \
    attribute @s minecraft:jump_strength modifier add ca:dvg_abl.jump_boost 1.35 add_multiplied_base

function ca:gnr_lay/delete/int

