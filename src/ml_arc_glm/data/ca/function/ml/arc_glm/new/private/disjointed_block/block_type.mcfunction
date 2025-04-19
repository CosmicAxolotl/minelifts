
data modify storage ca:ram stack[-1].id_test.string set string storage ca:ram stack[-1].id -7

execute if data storage ca:ram stack[-1].id_test{string:"_stairs"} run return run tag @s add stairs

data modify storage ca:ram stack[-1].id_test.string set string storage ca:ram stack[-1].id -5
execute if data storage ca:ram stack[-1].id_test{string:"_slab"} run return run tag @s add slab

data modify storage ca:ram stack[-1].id_test.string set string storage ca:ram stack[-1].id -5
execute if data storage ca:ram stack[-1].id_test{string:"_wall"} run return run tag @s add wall

tag @s add block
