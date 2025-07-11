
scoreboard players add @s ca.ml.arc_glm.jerry.lifetime 1

scoreboard players add @s ca.ml.arc_glm.rotation.x 1757
scoreboard players add @s ca.ml.arc_glm.rotation.y 1286
scoreboard players add @s ca.ml.arc_glm.rotation.z 2394

scoreboard players add @s[scores={ca.ml.arc_glm.jerry.lifetime=100..}] ca.ml.arc_glm.rotation.x 202
scoreboard players add @s[scores={ca.ml.arc_glm.jerry.lifetime=200..}] ca.ml.arc_glm.rotation.y 302
scoreboard players add @s[scores={ca.ml.arc_glm.jerry.lifetime=300..}] ca.ml.arc_glm.rotation.z 742

execute \
    if score @s ca.ml.arc_glm.jerry.lifetime matches 600.. at @s run \
        return run function ca:ml/arc_glm/delete/jigsaw

execute \
    if score @s ca.ml.arc_glm.count matches ..10 run \
        return 1

tag @a remove tmp
execute on passengers on origin at @s positioned ~-0.5 ~ ~-0.5 run tag @a[dx=0,gamemode=!spectator,tag=!ignore] add tmp


execute if score @s ca.ml.arc_glm.count matches ..20 at @s positioned ^ ^ ^-1 as @a[tag=tmp] run damage @s 2 minecraft:mob_projectile at ^ ^ ^-1
execute if score @s ca.ml.arc_glm.count matches ..30 at @s positioned ^ ^ ^-1 as @a[tag=tmp] run damage @s 4 minecraft:mob_projectile at ^ ^ ^-1
execute if score @s ca.ml.arc_glm.count matches ..40 at @s positioned ^ ^ ^-1 as @a[tag=tmp] run damage @s 8 minecraft:mob_projectile at ^ ^ ^-1
execute if score @s ca.ml.arc_glm.count matches ..50 at @s positioned ^ ^ ^-1 as @a[tag=tmp] run damage @s 10 minecraft:mob_projectile at ^ ^ ^-1
execute if score @s ca.ml.arc_glm.count matches ..56 at @s positioned ^ ^ ^-1 as @a[tag=tmp] run damage @s 14 minecraft:mob_projectile at ^ ^ ^-1

execute if score @s ca.ml.arc_glm.jerry.lifetime matches 40.. at @s positioned ^ ^ ^-1 as @a[tag=tmp] run damage @s 1 minecraft:sonic_boom at ^ ^ ^-1
execute if score @s ca.ml.arc_glm.jerry.lifetime matches 120.. at @s positioned ^ ^ ^-1 as @a[tag=tmp] run damage @s 2 minecraft:sonic_boom at ^ ^ ^-1
execute if score @s ca.ml.arc_glm.jerry.lifetime matches 240.. at @s positioned ^ ^ ^-1 as @a[tag=tmp] run damage @s 4 minecraft:sonic_boom at ^ ^ ^-1

execute if score @s ca.ml.arc_glm.jerry.lifetime matches 241.. at @s positioned ^ ^ ^-1 as @a[tag=tmp] run function ca:ml/arc_glm/jerry/block_shield
execute if score @s ca.ml.arc_glm.jerry.lifetime matches 241.. run effect give @a[tag=tmp] minecraft:blindness 1 0 true
execute if score @s ca.ml.arc_glm.jerry.lifetime matches 241.. run effect give @a[tag=tmp] minecraft:slowness 1 3 true

execute if score @s ca.ml.arc_glm.jerry.lifetime matches 400.. at @s positioned ^ ^ ^-1 as @a[tag=tmp] run damage @s 8 minecraft:sonic_boom at ^ ^ ^-1




execute store success score #$.tmp ca.ml.arc_glm.fun if entity @a[tag=tmp,limit=1]
tag @a remove tmp

scoreboard players operation #$.id ca.ml.arc_glm.fun = @s ca.ml.arc_glm.jerry.jigsaw.linkage

execute if score @s ca.ml.arc_glm.jerry.lifetime matches ..140 \
    at @s positioned ^ ^ ^40 \
    facing entity @a[predicate=ca:ml/arc_glm/jerry/linkage] eyes \
    positioned ^ ^ ^2 facing entity @s feet positioned as @s facing ^ ^ ^-1 run \
        function ca:ml/arc_glm/jerry/jigsaw/move

execute if score @s ca.ml.arc_glm.jerry.lifetime matches 141..240 \
    at @s positioned ^ ^ ^30 \
    facing entity @a[predicate=ca:ml/arc_glm/jerry/linkage] eyes \
    positioned ^ ^ ^2 facing entity @s feet positioned as @s facing ^ ^ ^-1 run \
        function ca:ml/arc_glm/jerry/jigsaw/move

execute if score @s ca.ml.arc_glm.jerry.lifetime matches 241.. \
    at @s positioned ^ ^ ^20 \
    facing entity @a[predicate=ca:ml/arc_glm/jerry/linkage] eyes \
    positioned ^ ^ ^2 facing entity @s feet positioned as @s facing ^ ^ ^-1 run \
        function ca:ml/arc_glm/jerry/jigsaw/move

execute if score @s ca.ml.arc_glm.jerry.lifetime matches ..240 run particle dust{color:[ 0.98039215686, 0.69019607843, 0.06666666666], scale:2} ^ ^ ^-0.2 0.5 0.5 0.5 0 5 force @a
execute if score @s ca.ml.arc_glm.jerry.lifetime matches 241.. run particle dust{color:[ 0.98039215686, 0.26777, 0.03], scale:2} ^ ^ ^-0.2 0.5 0.5 0.5 0 10 force @a

execute if score #$.tmp ca.ml.arc_glm.fun matches 1 run return run function ca:ml/arc_glm/delete/jigsaw



