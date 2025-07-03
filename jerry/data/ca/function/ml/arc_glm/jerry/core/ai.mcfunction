
scoreboard players remove @s ca.ml.arc_glm.jerry.flee_desire 1

execute at @s if entity @a[gamemode=!spectator,tag=!ignore,distance=..4] run \
    scoreboard players remove @s ca.ml.arc_glm.jerry.flee_desire 24000

execute at @s if entity @a[gamemode=!spectator,tag=!ignore,distance=..8] run \
    scoreboard players remove @s ca.ml.arc_glm.jerry.flee_desire 2400

execute at @s if entity @a[gamemode=!spectator,tag=!ignore,distance=..16] run \
    scoreboard players remove @s ca.ml.arc_glm.jerry.flee_desire 100

scoreboard players set #$.tmp ca.ml.arc_glm.fun 0

execute at @s \
    positioned ~ ~0.5 ~ as @a[gamemode=!spectator,tag=!ignore] \
    if function ca:ml/arc_glm/jerry/is_player_staring run \
        scoreboard players add #$.tmp ca.ml.arc_glm.fun 200

function ca:gnr_lay/new/int


# move disjointed blocks around the core

execute at @s \
    as @e[tag=idle,tag=!snapped,tag=ca.ml.arc_glm.djt_blk.snapper,distance=4..,limit=12,sort=random] run \
        function ca:ml/arc_glm/jerry/core/tp_snapper

function ca:gnr_lay/delete/int



scoreboard players operation @s ca.ml.arc_glm.jerry.flee_desire -= #$.tmp ca.ml.arc_glm.fun

execute if score @s ca.ml.arc_glm.jerry.flee_desire matches ..0 run \
    scoreboard players set @s ca.ml.arc_glm.jerry.flee_desire 1

execute unless score @s ca.ml.arc_glm.jerry.flee_desire matches ..360000 run \
    scoreboard players set @s ca.ml.arc_glm.jerry.flee_desire 360000




scoreboard players set #$.check ca.ml.arc_glm.fun 1

# if its health is not low enough
execute if score @s ca.ml.arc_glm.health matches 100.. run \
    scoreboard players set #$.check ca.ml.arc_glm.fun 0

# if it already has a low_health_cover
execute if score @s ca.ml.arc_glm.health matches ..100 \
    at @s as @n[type=block_display,distance=..1,tag=jigsaw,tag=low_health_cover] run \
    scoreboard players set #$.check ca.ml.arc_glm.fun 0

execute \
    if score #$.check ca.ml.arc_glm.fun matches 1 at @s run \
        function ca:ml/arc_glm/jerry/core/low_health_cover/summon

execute at @s positioned ~ ~0.5 ~ \
    if entity @n[type=block_display,distance=..1,tag=jigsaw,tag=low_health_cover,tag=complete] \
    positioned ~ ~7.5 ~ run \
        function ca:ml/arc_glm/jerry/core/ai/attack

# destroy low_health_cover if it has more than half max health
execute \
    if score @s ca.ml.arc_glm.health matches 351.. \
    at @s as @n[type=block_display,distance=..1,tag=jigsaw,tag=low_health_cover] run \
            function ca:ml/arc_glm/delete/jigsaw

execute if score @s ca.ml.arc_glm.health matches ..350 at @s positioned ~ ~0.5 ~ \
    if entity @n[type=block_display,distance=..1,tag=jigsaw,tag=low_health_cover,predicate=ca:ml/arc_glm/jerry/periodic] on passengers run \
        effect give @s[tag=hitbox] minecraft:regeneration 1 4 false

execute if score @s ca.ml.arc_glm.health matches ..350 at @s positioned ~ ~0.5 ~ \
    as @n[type=block_display,distance=..1,tag=jigsaw,tag=low_health_cover] run \
        return run function ca:ml/arc_glm/jerry/core/low_health_cover/rotate




execute at @s positioned ~ ~0.5 ~ run function ca:ml/arc_glm/jerry/core/ai/attack


execute store result score #$.tmp ca.ml.arc_glm.fun run random value 0..360000

execute \
    if score #$.tmp ca.ml.arc_glm.fun >= @s ca.ml.arc_glm.jerry.flee_desire run \
        function ca:ml/arc_glm/jerry/core/flee


