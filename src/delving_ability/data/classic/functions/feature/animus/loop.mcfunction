
execute as @a[scores={animus.drop=1..}] at @s run function #classic:feature/animus/drop
schedule function classic:feature/animus/loop 1t
scoreboard players set @a animus.drop 0

effect clear @a[tag=emerge.particles,scores={animus.delving.jump=0,delving.cooldown=..35}] jump_boost
effect clear @a[tag=emerge.particles,scores={animus.delving.jump=0,delving.cooldown=..35}] speed

execute as @a[predicate=classic:feature/delving/on_mainhand] run function classic:feature/animus/delving/on_mainhand

tag @a[scores={delving.cooldown=..35,animus.delving.jump=0}] remove emerge.particles

execute as @a[tag=emerge.particles,scores={animus.delving.jump=1..}] at @s run function classic:feature/animus/emerge/particle
