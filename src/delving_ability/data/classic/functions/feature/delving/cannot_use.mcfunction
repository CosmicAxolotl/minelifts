
title @s[tag=delving.cannot_use.floor] actionbar [{"text":"You cannot dig the block below you!","color":"#FF0000"}]
title @s[tag=delving.cannot_use.head] actionbar [{"text":"You cannot dig while having your head in water!","color":"#FF0000"}]
title @s[tag=delving.cannot_use.feet] actionbar [{"text":"You cannot dig while swimming!","color":"#FF0000"}]
title @s[tag=delving.cannot_use.air] actionbar [{"text":"You cannot dig through air!","color":"#FF0000"}]

playsound minecraft:entity.villager.no player @s ~ ~ ~ 1 1.3
scoreboard players set @s delving.cooldown 7

function classic:feature/animus/delving/inventory/root
