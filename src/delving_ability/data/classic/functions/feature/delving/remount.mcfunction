
execute on passengers if entity @s[type=area_effect_cloud] on origin run tag @s add tmp
ride @a[tag=tmp,limit=1] mount @s

execute as @a[tag=tmp,limit=1] at @s run function classic:feature/delving/movement/dig

tag @s remove tmp
