
scoreboard objectives add ml.fun trigger
scoreboard objectives add delving.cooldown trigger
scoreboard objectives add animus.drop minecraft.dropped:minecraft.totem_of_undying
scoreboard objectives add animus.delving.slot trigger
scoreboard objectives add animus.delving.jump minecraft.custom:minecraft.jump

scoreboard players set #-1 ml.fun -1
scoreboard players set #20 ml.fun 20

team add no_collisions
team modify no_collisions collisionRule never
