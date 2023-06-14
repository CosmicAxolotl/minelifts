
# check faces & update cube UI per DELVING player
execute as @e[type=area_effect_cloud,tag=feature.delving,tag=mount,predicate=!classic:feature/delving/has_passenger] run function classic:feature/delving/remount
execute as @a[tag=ml.delving,tag=move] run function classic:feature/delving/movement/move
execute as @a[tag=ml.delving,tag=delving.peek] run function classic:feature/delving/movement/emerge/loop
execute as @a[tag=ml.delving,tag=delving.inside] run function classic:feature/delving/select_face
scoreboard players remove @a[scores={delving.cooldown=1..}] delving.cooldown 1

# re-schedule if theres pending tasks
execute if entity @a[tag=ml.delving,limit=1] run schedule function classic:feature/delving/loop 1t
execute if entity @a[scores={delving.cooldown=1..},limit=1] run schedule function classic:feature/delving/loop 1t

execute store success score delving.loop delving.cooldown if entity @a[tag=ml.delving,limit=1]
