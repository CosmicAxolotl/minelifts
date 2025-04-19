

execute if entity @s[tag=block] run data modify storage ca:ram stack[-1].test.block_type set value "block"
execute if entity @s[tag=stairs] run data modify storage ca:ram stack[-1].test.block_type set value "stairs"
execute if entity @s[tag=slab] run data modify storage ca:ram stack[-1].test.block_type set value "slab"
execute if entity @s[tag=wall] run data modify storage ca:ram stack[-1].test.block_type set value "wall"

