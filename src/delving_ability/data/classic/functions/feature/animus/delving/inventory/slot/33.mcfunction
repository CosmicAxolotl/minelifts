
execute store success score slot.occupied ml.fun if data entity @s Inventory[{Slot:33b}]
execute if score slot.occupied ml.fun matches 0 run loot replace entity @s container.33 loot classic:feature/delving/animus
execute if score slot.occupied ml.fun matches 1 run loot give @s loot classic:feature/delving/animus
