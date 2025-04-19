
# =========================================================================================================================


title @s[scores={ca.dvg_abl.cooldown=5}] actionbar [{"text":"","color":"yellow"},"[",{"keybind":"key.forward"},"]:", {"text":" To emerge.  ","color":"white"},"[",{"keybind":"key.back"},"]:",{"text":" To cancel.","color":"white"}]

execute at @s[scores={ca.dvg_abl.cooldown=5}] run playsound minecraft:block.note_block.iron_xylophone player @s ~ ~ ~ 0.05 2

execute at @s[scores={ca.dvg_abl.cooldown=-1}] run playsound minecraft:block.note_block.iron_xylophone player @s ~ ~ ~ 0.05 1

scoreboard players set @s[scores={ca.dvg_abl.cooldown=-1}] ca.dvg_abl.cooldown 6

# =========================================================================================================================
