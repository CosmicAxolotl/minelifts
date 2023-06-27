
function classic:feature/delving/movement/emerge/jump_recursion

execute if score jump.lvl ml.fun matches 4 run effect give @s jump_boost 1 0 true
execute if score jump.lvl ml.fun matches 5 run effect give @s jump_boost 1 2 true
execute if score jump.lvl ml.fun matches 6 run effect give @s jump_boost 1 3 true
execute if score jump.lvl ml.fun matches 7 run effect give @s jump_boost 1 4 true
execute if score jump.lvl ml.fun matches 8 run effect give @s jump_boost 1 6 true

execute if score jump.lvl ml.fun matches 4.. run effect give @s speed infinite 2 true
