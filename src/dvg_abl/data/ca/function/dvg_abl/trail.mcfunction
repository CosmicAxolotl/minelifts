
execute \
    at @s[scores={ca.dvg_abl.cooldown=2..}] run \
        particle firework \
            ~ ~ ~ \
            0 0 0 \
            0 \
            0

tag @s add tmp
scoreboard players set #$.tmp.bool ca.dvg_abl.fun 0
execute \
    on passengers \
    on origin unless function ca:dvg_abl/trail/kill run \
            scoreboard players set #$.tmp.bool ca.dvg_abl.fun 1
tag @s remove tmp
execute if score #$.tmp.bool ca.dvg_abl.fun matches 1 run return fail

execute \
    unless score @s ca.dvg_abl.cooldown matches 8.. run \
        return fail

execute \
    on passengers \
    on origin run \
        attribute @s minecraft:movement_speed modifier remove ca:dvg_abl.speed_boost

execute on passengers run kill @s
kill @s
