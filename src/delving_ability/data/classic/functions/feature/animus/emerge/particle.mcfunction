
execute anchored eyes run particle firework ^ ^-0.2 ^-0.175 0.01 0.1 0.01 0 3 normal @s
tag @s add tmp
execute anchored eyes run particle firework ^ ^-0.2 ^-0.175 0.01 0.1 0.01 0 3 normal @a[tag=!tmp]
tag @s remove tmp

execute if score @s delving.cooldown matches 16.. run return 0

execute unless block ~0.299 ~-0.000001 ~0.299 #classic:feature/delving/air unless block ~0.299 ~-0.000001 ~0.299 light run tag @s remove emerge.particles
execute unless block ~0.299 ~-0.000001 ~-0.299 #classic:feature/delving/air unless block ~0.299 ~-0.000001 ~0.299 light run tag @s remove emerge.particles
execute unless block ~-0.299 ~-0.000001 ~0.299 #classic:feature/delving/air unless block ~0.299 ~-0.000001 ~0.299 light run tag @s remove emerge.particles
execute unless block ~-0.299 ~-0.000001 ~-0.299 #classic:feature/delving/air unless block ~0.299 ~-0.000001 ~0.299 light run tag @s remove emerge.particles

execute anchored eyes positioned ^ ^ ^ if block ~0.299 ~ ~0.299 water run tag @s remove emerge.particles
execute anchored eyes positioned ^ ^ ^ if block ~0.299 ~ ~-0.299 water run tag @s remove emerge.particles
execute anchored eyes positioned ^ ^ ^ if block ~-0.299 ~ ~0.299 water run tag @s remove emerge.particles
execute anchored eyes positioned ^ ^ ^ if block ~-0.299 ~ ~-0.299 water run tag @s remove emerge.particles

execute anchored eyes positioned ^ ^ ^ if block ~0.299 ~ ~0.299 light[waterlogged=true] run tag @s remove emerge.particles
execute anchored eyes positioned ^ ^ ^ if block ~0.299 ~ ~-0.299 light[waterlogged=true] run tag @s remove emerge.particles
execute anchored eyes positioned ^ ^ ^ if block ~-0.299 ~ ~0.299 light[waterlogged=true] run tag @s remove emerge.particles
execute anchored eyes positioned ^ ^ ^ if block ~-0.299 ~ ~-0.299 light[waterlogged=true] run tag @s remove emerge.particles

effect clear @s[tag=!emerge.particles] speed
