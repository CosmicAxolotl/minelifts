
playsound minecraft:entity.ender_dragon.growl hostile @a ~ ~ ~ 3 0.7

execute on passengers if entity @s[tag=hitbox] run effect clear @s minecraft:resistance

tag @s add awaken
