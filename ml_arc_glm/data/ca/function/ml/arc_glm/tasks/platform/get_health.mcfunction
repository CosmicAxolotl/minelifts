
scoreboard players operation @s ca.ml.arc_glm.health = @s ca.ml.arc_glm.health

execute on passengers if entity @s[tag=hitbox] store result score #$.tmp ca.ml.arc_glm.fun run data get entity @s Health 1


scoreboard players operation #$.health ca.ml.arc_glm.fun += #$.tmp ca.ml.arc_glm.fun


execute if score #$.tmp ca.ml.arc_glm.fun = @s ca.ml.arc_glm.health run return fail

execute if score #$.tmp ca.ml.arc_glm.fun > @s ca.ml.arc_glm.health run \
    return run scoreboard players operation @s ca.ml.arc_glm.health = #$.tmp ca.ml.arc_glm.fun

execute at @s run playsound minecraft:block.glass.break hostile @a ~ ~0.5 ~ 1.2 1
execute at @s run playsound minecraft:entity.blaze.hurt hostile @a ~ ~0.5 ~ 0.7 1
execute at @s run particle minecraft:block{block_state:"minecraft:glass"} ~ ~0.5 ~ 0.3 0.3 0.3 0 150
execute at @s run particle minecraft:block{block_state:"minecraft:emerald_block"} ~ ~0.5 ~ 0.3 0.3 0.3 0 150
execute at @s run particle minecraft:totem_of_undying ~ ~0.5 ~ 0.1 0.1 0.1 0.7 10

scoreboard players operation @s ca.ml.arc_glm.health = #$.tmp ca.ml.arc_glm.fun


