
#declare storage ml:tmp generic NBT access
#declare entity 00000000-0000-0000-0000-002000000005 tmp access to DISPLAY_STACK Note: kill at end of preparing.
#declare entity 00000000-0000-0000-0000-002100000005 tmp access to MOUNT_STACK Note: kill at end of preparing.
#declare entity 00000000-0000-0000-0000-002200000005 tmp access to DELVING_MARKER. Note: kill at end of preparing.

# guard-statements
execute if score @s delving.cooldown matches 1.. run return 0
execute if entity @s[tag=delving.inside] run return 0
execute if entity @s[tag=delving.peek] run return 0

execute unless score @s delving.cooldown = @s delving.cooldown run scoreboard players set @s delving.cooldown 0

# guard-statement for on valid block condition
tag @s remove delving.cannot_use
execute unless block ~ ~-0.000001 ~ #classic:feature/delving/travel_blocks run tag @s add delving.cannot_use
execute if entity @s[tag=delving.cannot_use] run function classic:feature/delving/cannot_use

schedule function classic:feature/delving/loop 1t
execute if entity @s[tag=delving.cannot_use] run return 0

# give effects to the player
effect give @s blindness infinite 0 true
effect give @s invisibility infinite 0 true
effect give @s resistance infinite 5 true

# play effect to summerge

stopsound @s ambient
stopsound @s block
stopsound @s hostile
stopsound @s neutral
stopsound @s player
stopsound @s record
stopsound @s voice
stopsound @s weather

playsound minecraft:block.beacon.power_select player @a ~ ~ ~ 0.5 1.31
playsound minecraft:block.dripstone_block.fall player @a ~ ~ ~ 2 0.57
playsound minecraft:entity.silverfish.ambient player @a ~ ~ ~ 4 1.34
playsound minecraft:block.composter.fill player @a ~ ~ ~ 3 0.64
playsound minecraft:entity.zombie.infect player @a ~ ~ ~ 0.5 1.19

# get player UUID (saves 1 @a selector & multiple player NBT check, which are :cringe:)
data modify storage ml:tmp player set from entity @s UUID

# summon DELVING_MARKER
execute positioned ~ ~-1 ~ align xyz run summon block_display ~0.5 ~0.5 ~0.5 {block_state:{Name:"minecraft:air"},UUID:[I;0,0,34,5],Passengers:[{id:"minecraft:area_effect_cloud",Age:-2147483648,Duration:-1,WaitTime:-2147483648,Tags:["feature.delving","marker.pos"],Passengers:[{id:"minecraft:turtle",NoAI:1b,Age:-2147483648,CustomName:'{"text":"Hawksbill"}',Team:"no_collisions",Silent:1b,Invulnerable:1b,DeathLootTable:"minecraft:empty",ActiveEffects:[{Id:14,ShowParticles:0b,Ambient:0b,Duration:2147483647}],Tags:["tmp","feature.delving","marker.pos"]}]}]}
#function classic:feature/delving/movement/resonance
execute as 00000000-0000-0000-0000-002200000005 on passengers run data modify entity @s Owner set from storage ml:tmp player

execute align xyz positioned ~ ~512 ~ run function classic:feature/delving/allocate

# clean tmp accesses
kill 00000000-0000-0000-0000-002000000005
kill 00000000-0000-0000-0000-002100000005
kill 00000000-0000-0000-0000-002200000005
