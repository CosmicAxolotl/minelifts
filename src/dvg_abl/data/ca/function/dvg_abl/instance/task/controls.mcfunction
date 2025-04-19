
# =========================================================================================================================

tp @e[type=item_display,tag=dvg_abl.cage,predicate=ca:dvg_abl/private/fast_reference,limit=1] ~ ~ ~


execute if entity @s[scores={ca.dvg_abl.map_hold=0..}] run tp @e[type=item_display,tag=dvg_abl.tail,predicate=ca:dvg_abl/private/fast_reference,limit=1] ^ ^ ^0.3
execute if entity @s[scores={ca.dvg_abl.map_hold=-1}] run tp @e[type=item_display,tag=dvg_abl.tail,predicate=ca:dvg_abl/private/fast_reference,limit=1] ^ ^ ^16

# =========================================================================================================================
