
playsound minecraft:entity.ender_dragon.growl hostile @a ~ ~ ~ 3 0.7

execute on passengers if entity @s[tag=hitbox] run effect clear @s minecraft:resistance
execute on passengers if entity @s[tag=hitbox] run effect give @s minecraft:resistance infinite 1 true

tag @s add awaken
