
# =========================================================================================================================

tp @e[type=item_display,tag=dvg_abl.cage,predicate=ca:dvg_abl/private/fast_reference,limit=1] ~ ~ ~


execute if entity @s[tag=dvg_abl.main.tail] run tp @e[type=item_display,tag=dvg_abl.tail,predicate=ca:dvg_abl/private/fast_reference,limit=1] ^ ^ ^-0.3
execute if entity @s[tag=!dvg_abl.main.tail] run tp @e[type=item_display,tag=dvg_abl.tail,predicate=ca:dvg_abl/private/fast_reference,limit=1] ^ ^-0.3 ^-1.7

# =========================================================================================================================
