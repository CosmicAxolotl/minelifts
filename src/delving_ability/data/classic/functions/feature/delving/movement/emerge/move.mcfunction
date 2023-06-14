
execute if entity @s[tag=emerge.accept,scores={delving.cooldown=..17}] run function classic:feature/delving/movement/emerge/accept
execute if entity @s[tag=!emerge.accept,scores={delving.cooldown=..17}] run function classic:feature/delving/movement/emerge/cancel

tag @a remove tmp
