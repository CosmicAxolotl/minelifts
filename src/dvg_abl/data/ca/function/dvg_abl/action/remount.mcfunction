
execute store result storage ca:ram stack[-1].id int 1 run scoreboard players get @s ca.dvg_abl.fun


execute as @a[predicate=ca:dvg_abl/private/fast_reference,limit=1] run tag @s add tmp
    ride @a[tag=tmp,limit=1] dismount
    ride @a[tag=tmp,limit=1] mount @s
tag @a remove tmp
