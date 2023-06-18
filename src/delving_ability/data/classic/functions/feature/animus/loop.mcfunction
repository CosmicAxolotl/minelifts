
execute as @a[scores={animus.drop=1..}] at @s run function #classic:feature/animus/drop
schedule function classic:feature/animus/loop 1t
scoreboard players set @a animus.drop 0