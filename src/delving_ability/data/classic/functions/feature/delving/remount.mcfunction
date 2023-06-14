
execute on passengers if entity @s[type=area_effect_cloud] on origin run tag @s add tmp
ride @a[tag=tmp,limit=1] mount @s

execute as @a[tag=tmp,tag=delving.peek,limit=1] run function classic:feature/delving/movement/emerge/move
execute if entity @a[tag=tmp,tag=delving.peek,limit=1] run return 0

execute as @a[tag=tmp,tag=delving.inside,tag=!can.emerge,limit=1] at @s run function classic:feature/delving/movement/dig
