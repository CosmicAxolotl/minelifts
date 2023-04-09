
scoreboard players set task.load_slot.0.running ml.rom 1
execute store result score task.load_slot.0.chunks_loaded ml.rom if entity @e[type=marker,tag=ml.core,tag=slot.0,tag=chunk]

execute if score task.load_slot.0.chunks_loaded ml.rom = task.load_slot.0.chunks_to_load ml.rom run function minelifts:task/load_floor/0/task_complete


# re-schedule if task is not done yet
title @a[tag=innata_log] actionbar [{"text":"","color":"yellow"},{"text":"Waiting chunks to be fully loaded: "},{"score":{"name":"task.load_slot.0.chunks_loaded","objective":"ml.rom"}}," of ",{"score":{"name":"task.load_slot.0.chunks_to_load","objective":"ml.rom"}},"."] 
execute if score task.load_slot.0.chunks_loaded ml.rom < task.load_slot.0.chunks_to_load ml.rom run schedule function minelifts:task/load_floor/0/task 1t append
