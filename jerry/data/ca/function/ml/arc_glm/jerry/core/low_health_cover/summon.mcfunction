
execute positioned ~ ~0.5 ~ run function ca:ml/arc_glm/new/jigsaw {id: "low_health_cover"}

execute as @e[tag=jigsaw,tag=!low_health_cover] at @s run function ca:ml/arc_glm/delete/jigsaw

playsound minecraft:entity.warden.agitated hostile @a ~ ~0.5 ~ 2 2 1
playsound minecraft:entity.warden.roar hostile @a ~ ~0.5 ~ 2 1.5 0.5
particle minecraft:lava ~ ~0.5 ~ 0.3 0.1 0.3 4 100 force @a

