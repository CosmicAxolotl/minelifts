
execute store result score $sneaking ml.fun if predicate ml:generic/sneaking

execute if score $sneaking ml.fun matches 0 run title @s actionbar ["",[{"text":"[","color":"yellow","bold":true},{"keybind":"key.drop"},"]: "],"Delve. ",[{"text":"[","color":"yellow","bold":true},{"keybind":"key.sneak"}," + ",{"keybind":"key.drop"},"]: "],"Quick Emerge. "]
execute if score $sneaking ml.fun matches 1 run title @s actionbar ["",[{"text":"","color":"yellow","bold":true},{"text":"[","color":"gold"},{"keybind":"key.sneak","color":"gold"}," + ",{"keybind":"key.drop"},"]: "],"Quick Emerge. "]

