
#declare storage ml:tmp generic NBT access
#declare entity 00000000-0000-0000-0000-002000000005 tmp access to DISPLAY_STACK Note: kill at end of preparing.
#declare entity 00000000-0000-0000-0000-002100000005 tmp access to MOUNT_STACK Note: kill at end of preparing.
#declare entity 00000000-0000-0000-0000-002200000005 tmp access to DELVING_MARKER. Note: kill at end of preparing.

# summon DISPLAY_STACK & set transformations
summon block_display ~ ~ ~ {block_state:{Name:"minecraft:air"},UUID:[I;0,0,32,5],Passengers:[{id:"minecraft:block_display",block_state:{Name:"minecraft:air"},view_range:0.0f,Tags:["indicator_anchor"],Passengers:[{background:0,shadow:1b,id:"minecraft:text_display",text:'{"text":"???","color":"#FCF000"}',Tags:["indicator.num","num.down"],billboard:"vertical",Rotation:[0.0f,90.0f],brightness:{sky:0,block:15},view_range:0.1f},{background:0,shadow:1b,id:"minecraft:text_display",text:'{"text":"???","color":"#FCF000"}',Tags:["indicator.num","num.up"],billboard:"vertical",Rotation:[0.0f,-90.0f],brightness:{sky:0,block:15},view_range:0.1f},{background:0,shadow:1b,id:"minecraft:text_display",text:'{"text":"???","color":"#FCF000"}',Tags:["indicator.num","num.east"],billboard:"fixed",Rotation:[-90.0f,0.0f],brightness:{sky:0,block:15},view_range:0.1f},{background:0,shadow:1b,id:"minecraft:text_display",text:'{"text":"???","color":"#FCF000"}',Tags:["indicator.num","num.west"],billboard:"fixed",Rotation:[90.0f,0.0f],brightness:{sky:0,block:15},view_range:0.1f},{background:0,shadow:1b,id:"minecraft:text_display",text:'{"text":"???","color":"#FCF000"}',Tags:["indicator.num","num.south"],billboard:"fixed",Rotation:[0.0f,0.0f],brightness:{sky:0,block:15},view_range:0.1f},{background:0,shadow:1b,id:"minecraft:text_display",text:'{"text":"???","color":"#FCF000"}',Tags:["indicator.num","num.north"],billboard:"fixed",Rotation:[-180.0f,0.0f],brightness:{sky:0,block:15},view_range:0.1f},{id:"minecraft:block_display",billboard:"fixed",brightness:{sky:0,block:15},block_state:{Name:"minecraft:spawner"},view_range:0.1f,Tags:["indicator"]},{id:"minecraft:villager",NoAI:1b,Age:-2147483648,CustomName:'{"text":"Jerry"}',Silent:1b,Invulnerable:1b,DeathLootTable:"minecraft:empty",ActiveEffects:[{Id:14,ShowParticles:0b,Ambient:0b,Duration:2147483647}],Tags:["tmp","connector"],Passengers:[{id:"minecraft:marker"},{id:"minecraft:area_effect_cloud",Age:-2147483648,Duration:-1,WaitTime:-2147483648,Passengers:[{id:"minecraft:area_effect_cloud",Age:-2147483648,Duration:-1,WaitTime:-2147483648}]}]}]}]}
## set text display transformation
execute as 00000000-0000-0000-0000-002000000005 on passengers on passengers run data merge entity @s[type=text_display] {transformation:{translation:[-0.022f,-0.15f,0.25f]},interpolation_duration:0}
## set block display transformation
execute as 00000000-0000-0000-0000-002000000005 on passengers on passengers run data merge entity @s[type=block_display] {transformation:{translation:[-0.25f,-0.25f,-0.25f],scale:[0.5f,0.5f,0.5f]},interpolation_duration:0}

effect give @s invisibility infinite 0 true

# summon MOUNT_STACK
summon block_display ~ ~ ~ {block_state:{Name:"minecraft:air"},UUID:[I;0,0,33,5],Passengers:[{id:"minecraft:area_effect_cloud",Age:-2147483648,Duration:-1,WaitTime:-2147483648,Tags:["ml.classic","feature.delving","mount"],Passengers:[{id:"minecraft:interaction",height:1.8f,width:0.7f,Tags:["ml.classic","delving.interaction"]},{id:"minecraft:area_effect_cloud",Tags:["connector_to_player"],Age:-2147483648,Duration:-1,WaitTime:-2147483648,Passengers:[{id:"minecraft:area_effect_cloud",Tags:["connector_to_delving_marker"],Age:-2147483648,Duration:-1,WaitTime:-2147483648}]}]}]}

# create pointer MOUNT_STACK => DISPLAY_STACK
execute as 00000000-0000-0000-0000-002100000005 on passengers run data modify entity @s Owner set from entity @e[type=villager,distance=..16,tag=tmp,tag=connector,limit=1] UUID

# mount player on MOUNT_STACK
tag @s add tmp
ride @s dismount
execute as 00000000-0000-0000-0000-002100000005 on passengers run ride @a[tag=tmp,limit=1] mount @s

# create pointer MOUNT_STACK => PLAYER
execute on vehicle on passengers run data modify entity @s[type=area_effect_cloud] Owner set from storage ml:tmp player

# create pointer DISPLAY_STACK => DELVING_MARKER
execute on vehicle on origin on passengers on passengers run data modify entity @s Owner set from entity @e[type=turtle,tag=tmp,tag=feature.delving,tag=marker.pos,limit=1] UUID

# create pointer DISPLAY_STACK => PLAYER
execute on vehicle on origin on passengers run data modify entity @s[type=area_effect_cloud] Owner set from storage ml:tmp player

# create pointer DELVING_MARKER => PLAYER
execute as 00000000-0000-0000-0000-002200000005 on passengers run data modify entity @s Owner set from storage ml:tmp player

# remove tmp tags
execute on vehicle run tag @s remove tmp
execute on vehicle on origin run tag @s remove tmp

function classic:feature/delving/movement/resonance

# add tags to the player
tag @s add ml.delving
tag @s add delving.inside
tag @s add num.update
