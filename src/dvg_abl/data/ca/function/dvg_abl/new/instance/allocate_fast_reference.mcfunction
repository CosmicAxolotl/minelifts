
# =========================================================================================================================

execute store result storage ca:ram stack[-1].id int 1 run random value -4194304..4194304

execute if entity @a[predicate=ca:dvg_abl/private/fast_reference,limit=1] run function ca:dvg_abl/new/instance/allocate_fast_reference
execute unless entity @a[predicate=ca:dvg_abl/private/fast_reference,limit=1] store result score @s ca.dvg_abl.fun run data get storage ca:ram stack[-1].id 1

# =========================================================================================================================
