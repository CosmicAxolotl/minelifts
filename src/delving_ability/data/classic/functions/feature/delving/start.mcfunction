
#declare storage ml:tmp generic NBT access
#declare entity 00000000-0000-0000-0000-002000000005 tmp access to DISPLAY_STACK Note: kill at end of preparing.
#declare entity 00000000-0000-0000-0000-002100000005 tmp access to MOUNT_STACK Note: kill at end of preparing.
#declare entity 00000000-0000-0000-0000-002200000005 tmp access to DELVING_MARKER. Note: kill at end of preparing.

schedule function classic:feature/delving/loop 1t

# guard-statements
execute if entity @s[tag=delving.inside] run return 0
execute if entity @s[tag=delving.peek] run return 0

tag @s remove delving.cannot_use.cooldown

# cooldown guardstatement
execute if score @s delving.cooldown matches 21.. run function classic:feature/animus/delving/inventory/root
execute if score @s delving.cooldown matches 21.. run return 0

scoreboard players set @s delving.cooldown 0

# guard-statement for on valid block condition
tag @s remove delving.cannot_use.floor
tag @s remove delving.cannot_use.feet
tag @s remove delving.cannot_use.head
tag @s remove delving.cannot_use.air

execute unless block ~ ~-0.000001 ~ #classic:feature/delving/travel_blocks run tag @s add delving.cannot_use.floor
execute if block ~ ~-0.000001 ~ #classic:feature/delving/air run tag @s add delving.cannot_use.air
execute unless block ~ ~0.500001 ~ #classic:feature/delving/air run tag @s add delving.cannot_use.feet
execute if block ~ ~0.500001 ~ light[waterlogged=true] run tag @s add delving.cannot_use.feet
execute anchored eyes positioned ^ ^ ^ unless block ~ ~ ~ #classic:feature/delving/air run tag @s add delving.cannot_use.head

execute unless entity @s[tag=!delving.cannot_use.floor,tag=!delving.cannot_use.feet,tag=!delving.cannot_use.head] run function classic:feature/delving/cannot_use

execute unless entity @s[tag=!delving.cannot_use.floor,tag=!delving.cannot_use.feet,tag=!delving.cannot_use.head] run return 0

execute if score sneaking ml.fun matches 0 run tellraw @s[tag=!animus.delving.hide_help] [["",{"text":"[!]","color":"yellow","bold":true}," Press [",{"keybind":"key.inventory"},"] to see a guide of the Delving Ability."]]

execute if score sneaking ml.fun matches 1 run tag @s add quick.emerge

# give effects to the player
effect clear @s speed
effect clear @s jump_boost
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
data modify storage ml:tmp player set from entity @s

# summon DELVING_MARKER
execute positioned ~ ~-0.0001 ~ align xyz run summon block_display ~0.5 ~0.2 ~0.5 {block_state:{Name:"minecraft:air"},UUID:[I;0,0,34,5],Passengers:[{id:"minecraft:area_effect_cloud",Age:-2147483648,Duration:-1,WaitTime:-2147483648,Tags:["feature.delving","marker.pos"],Passengers:[{id:"minecraft:turtle",NoAI:1b,Age:-2147483648,CustomName:'{"text":"Hawksbill"}',Team:"no_collisions",Silent:1b,Invulnerable:1b,DeathLootTable:"minecraft:empty",ActiveEffects:[{Id:14,ShowParticles:0b,Ambient:0b,Duration:2147483647}],Tags:["tmp","feature.delving","marker.pos"]}]}]}

execute as 00000000-0000-0000-0000-002200000005 on passengers run data modify entity @s Owner set from storage ml:tmp player.UUID

execute align xyz positioned ~ ~512 ~ run function classic:feature/delving/allocate

execute store success score description ml.fun unless entity @s[tag=animus.delving.no_description]
execute store success score lvl ml.fun if entity @s[tag=animus.delving.upgraded]

execute on vehicle on origin on passengers run data modify entity @s data.inventory set from storage ml:tmp player.Inventory

item replace entity @s armor.feet with air
item replace entity @s armor.legs with air
item replace entity @s armor.chest with air
item replace entity @s armor.head with air

item replace entity @s weapon.offhand with air

clear @s

function classic:feature/delving/lock

# clean tmp accesses
kill 00000000-0000-0000-0000-002000000005
kill 00000000-0000-0000-0000-002100000005
kill 00000000-0000-0000-0000-002200000005
tag @s remove emerge.particles
