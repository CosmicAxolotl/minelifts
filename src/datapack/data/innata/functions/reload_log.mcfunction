scoreboard objectives add ca trigger
scoreboard players set innata.timestamp ca 1
data modify storage ca:innata logs[0] set from storage ca:innata 
data modify storage ca:innata latest_logs set value [{"body":'[{"text":"example"}]'}]
tellraw @a[tag=innata_log] {"nbt":"latest_logs[-1].body"}