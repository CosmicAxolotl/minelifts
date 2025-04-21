


scoreboard players remove @s[scores={ca.ml.arc_glm.disturbance=0..}] ca.ml.arc_glm.disturbance 1

execute unless function ca:ml/arc_glm/tasks/annoyance run return run function ca:gnr_lay/delete/int



tag @s[scores={ca.ml.arc_glm.disturbance=1000..}] add awaken
execute if entity @s[tag=awaken] run function ca:ml/arc_glm/tasks/core/awake
particle minecraft:angry_villager ~ ~-0.5 ~ 0 0 0 0 1 force
playsound minecraft:entity.phantom.ambient hostile @a ~ ~ ~ 0.25 2

execute if entity @s[scores={ca.ml.arc_glm.disturbance=1000..}] run function ca:ml/arc_glm/tasks/core/awake
