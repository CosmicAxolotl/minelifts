

scoreboard players set #$.test ca.ml.arc_glm.fun 0
execute on passengers if entity @s[tag=hitbox] run scoreboard players set #$.test ca.ml.arc_glm.fun 1
execute if score #$.test ca.ml.arc_glm.fun matches 0 at @s run return run function ca:ml/arc_glm/delete/core

scoreboard players remove @s[scores={ca.ml.arc_glm.disturbance=0..}] ca.ml.arc_glm.disturbance 1

execute unless function ca:ml/arc_glm/tasks/annoyance run return run function ca:gnr_lay/delete/int


tag @s[scores={ca.ml.arc_glm.disturbance=1000..}] add awaken
execute if entity @s[tag=awaken] run function ca:ml/arc_glm/tasks/core/awake
particle minecraft:angry_villager ~ ~0.1 ~ 0 0 0 0 1 force
playsound minecraft:entity.phantom.ambient hostile @a ~ ~ ~ 0.25 2

execute if entity @s[scores={ca.ml.arc_glm.disturbance=1000..}] run function ca:ml/arc_glm/tasks/core/awake


