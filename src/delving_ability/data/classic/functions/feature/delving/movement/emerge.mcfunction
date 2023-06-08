
# set cooldown
scoreboard players set @s delving.cooldown 15

tag @s add emerge

title @s times 0t 15t 5t
title @s subtitle {"text":"Emerging...","color":"#FFF000"}
title @s title {"text":"\u2191","color":"#AFFF00"}

tag @s remove delving.inside
tag @s add delving.peek
