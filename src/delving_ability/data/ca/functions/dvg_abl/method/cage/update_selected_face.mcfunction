
# =========================================================================================================================

function ca:gnr_lay/new/int

# =========================================================================================================================

execute store result storage ca:ram stack[-1].direction.south int 1 run scoreboard players get @s ca.dvg_abl.resonance.south
execute store result storage ca:ram stack[-1].direction.north int 1 run scoreboard players get @s ca.dvg_abl.resonance.north
execute store result storage ca:ram stack[-1].direction.west int 1 run scoreboard players get @s ca.dvg_abl.resonance.west
execute store result storage ca:ram stack[-1].direction.east int 1 run scoreboard players get @s ca.dvg_abl.resonance.east
execute store result storage ca:ram stack[-1].direction.down int 1 run scoreboard players get @s ca.dvg_abl.resonance.down
execute store result storage ca:ram stack[-1].direction.up int 1 run scoreboard players get @s ca.dvg_abl.resonance.up

# =========================================================================================================================

data modify storage ca:ram stack[-1].entity_nbt set value {interpolation_duration:-1}

    execute if entity @s[tag=dvg_abl.facing.south] run data modify storage ca:ram stack[-1].entity_nbt.transformation set value {right_rotation:[0.0f,-1.0f,0.0f,0.0f],translation:[0.25f,-0.25f,-0.2501f],scale:[0.5f,0.5f,0.0f]}
    execute if entity @s[tag=dvg_abl.facing.north] run data modify storage ca:ram stack[-1].entity_nbt.transformation set value {right_rotation:[0.0f,0.0f,0.0f,1.0f],translation:[-0.25f,-0.25f,0.2501f],scale:[0.5f,0.5f,0.0f]}
    execute if entity @s[tag=dvg_abl.facing.west] run data modify storage ca:ram stack[-1].entity_nbt.transformation set value {right_rotation:[0.0f,0.7071067811865475f,0.0f,0.7071067811865475f],translation:[0.2501f,-0.25f,0.25f],scale:[0.0f,0.5f,0.5f]}
    execute if entity @s[tag=dvg_abl.facing.east] run data modify storage ca:ram stack[-1].entity_nbt.transformation set value {right_rotation:[0.0f,-0.7071067811865475f,0.0f,-0.7071067811865475f],translation:[-0.2501f,-0.25f,0.25f],scale:[0.0f,0.5f,0.5f]}
    execute if entity @s[tag=dvg_abl.facing.down] run data modify storage ca:ram stack[-1].entity_nbt.transformation set value {right_rotation:[-0.7071067811865475f,0.0f,0.0f,0.7071067811865475f],translation:[-0.25f,0.2501f,0.25f],scale:[0.5f,0.0f,0.5f]}
    execute if entity @s[tag=dvg_abl.facing.up] run data modify storage ca:ram stack[-1].entity_nbt.transformation set value {right_rotation:[0.7071067811865475f,0.0f,0.0f,0.7071067811865475f],translation:[-0.25f,-0.2501f,-0.25f],scale:[0.5f,0.0f,0.5f]}

execute if entity @s[tag=dvg_abl.facing.south] store result score #$steps ca.dvg_abl.fun run data get storage ca:ram stack[-1].direction.south
execute if entity @s[tag=dvg_abl.facing.north] store result score #$steps ca.dvg_abl.fun run data get storage ca:ram stack[-1].direction.north
execute if entity @s[tag=dvg_abl.facing.west] store result score #$steps ca.dvg_abl.fun run data get storage ca:ram stack[-1].direction.west
execute if entity @s[tag=dvg_abl.facing.east] store result score #$steps ca.dvg_abl.fun run data get storage ca:ram stack[-1].direction.east
execute if entity @s[tag=dvg_abl.facing.down] store result score #$steps ca.dvg_abl.fun run data get storage ca:ram stack[-1].direction.down
execute if entity @s[tag=dvg_abl.facing.up] store result score #$steps ca.dvg_abl.fun run data get storage ca:ram stack[-1].direction.up

    execute if score @s ca.dvg_abl.cooldown matches -1..0 if score #$steps ca.dvg_abl.fun matches 2.. anchored eyes run playsound minecraft:block.rooted_dirt.break master @s ^ ^ ^ 0.7 1.5
    execute if score @s ca.dvg_abl.cooldown matches -1..0 if score #$steps ca.dvg_abl.fun matches ..-2 anchored eyes run playsound minecraft:block.lodestone.break master @s ^ ^ ^ 0.5 1

    execute if score @s ca.dvg_abl.cooldown matches -1..0 if score #$steps ca.dvg_abl.fun matches 1 anchored eyes run playsound minecraft:block.rooted_dirt.break master @s ^ ^ ^ 0.7 1.8
    execute if score @s ca.dvg_abl.cooldown matches -1..0 if score #$steps ca.dvg_abl.fun matches 1 anchored eyes run playsound minecraft:entity.silverfish.ambient master @s ^ ^ ^ 0.3 1.5

    execute if score @s ca.dvg_abl.cooldown matches -1..0 if score #$steps ca.dvg_abl.fun matches -1 anchored eyes run playsound minecraft:block.lodestone.break master @s ^ ^ ^ 0.7 0.6
    execute if score @s ca.dvg_abl.cooldown matches -1..0 if score #$steps ca.dvg_abl.fun matches -1 anchored eyes run playsound minecraft:entity.silverfish.hurt master @s ^ ^ ^ 0.2 1.3

    execute unless score @s ca.dvg_abl.cooldown matches -1..0 if score #$steps ca.dvg_abl.fun matches 2.. anchored eyes run playsound minecraft:block.rooted_dirt.break master @s ^ ^ ^ 0.3 1.5
    execute unless score @s ca.dvg_abl.cooldown matches -1..0 if score #$steps ca.dvg_abl.fun matches ..-2 anchored eyes run playsound minecraft:block.lodestone.break master @s ^ ^ ^ 0.3 1.3

    execute unless score @s ca.dvg_abl.cooldown matches -1..0 if score #$steps ca.dvg_abl.fun matches 1 anchored eyes run playsound minecraft:block.rooted_dirt.break master @s ^ ^ ^ 0.3 1.8
    execute unless score @s ca.dvg_abl.cooldown matches -1..0 if score #$steps ca.dvg_abl.fun matches 1 anchored eyes run playsound minecraft:entity.silverfish.ambient master @s ^ ^ ^ 0.2 1.5

    execute unless score @s ca.dvg_abl.cooldown matches -1..0 if score #$steps ca.dvg_abl.fun matches -1 anchored eyes run playsound minecraft:block.lodestone.break master @s ^ ^ ^ 0.3 0.6
    execute unless score @s ca.dvg_abl.cooldown matches -1..0 if score #$steps ca.dvg_abl.fun matches -1 anchored eyes run playsound minecraft:entity.silverfish.hurt master @s ^ ^ ^ 0.1 1.3


    execute unless score @s ca.dvg_abl.cooldown matches -1..0 if score #$steps ca.dvg_abl.fun matches 1.. run data modify storage ca:ram stack[-1].entity_nbt merge value {block_state:{Name:"minecraft:lime_stained_glass"},glow_color_override:5797953}
    execute unless score @s ca.dvg_abl.cooldown matches -1..0 if score #$steps ca.dvg_abl.fun matches ..-2 run data modify storage ca:ram stack[-1].entity_nbt merge value {block_state: {Name:"minecraft:orange_stained_glass"},glow_color_override:7887169}
    execute unless score @s ca.dvg_abl.cooldown matches -1..0 if score #$steps ca.dvg_abl.fun matches -1 run data modify storage ca:ram stack[-1].entity_nbt merge value {block_state:{Name:"minecraft:red_stained_glass"},glow_color_override:7881025}
    execute unless score @s ca.dvg_abl.cooldown matches -1..0 if score #$steps ca.dvg_abl.fun matches 0 run data modify storage ca:ram stack[-1].entity_nbt merge value {block_state:{Name:"minecraft:black_stained_glass"},glow_color_override:3355443}

    execute if score @s ca.dvg_abl.cooldown matches -1..0 if score #$steps ca.dvg_abl.fun matches 1.. run data modify storage ca:ram stack[-1].entity_nbt merge value {block_state:{Name:"minecraft:lime_stained_glass"},glow_color_override:7335955}
    execute if score @s ca.dvg_abl.cooldown matches -1..0 if score #$steps ca.dvg_abl.fun matches ..-2 run data modify storage ca:ram stack[-1].entity_nbt merge value {block_state: {Name:"minecraft:orange_stained_glass"},glow_color_override:15758099}
    execute if score @s ca.dvg_abl.cooldown matches -1..0 if score #$steps ca.dvg_abl.fun matches -1 run data modify storage ca:ram stack[-1].entity_nbt merge value {block_state:{Name:"minecraft:red_stained_glass"},glow_color_override:15733523}
    execute if score @s ca.dvg_abl.cooldown matches -1..0 if score #$steps ca.dvg_abl.fun matches 0 run data modify storage ca:ram stack[-1].entity_nbt merge value {block_state:{Name:"minecraft:black_stained_glass"},glow_color_override:1710618}

execute if entity @s[tag=dvg_abl.facing.south] run data modify storage ca:ram stack[-1].facing.direction set value "south"
execute if entity @s[tag=dvg_abl.facing.north] run data modify storage ca:ram stack[-1].facing.direction set value "north"
execute if entity @s[tag=dvg_abl.facing.west] run data modify storage ca:ram stack[-1].facing.direction set value "west"
execute if entity @s[tag=dvg_abl.facing.east] run data modify storage ca:ram stack[-1].facing.direction set value "east"
execute if entity @s[tag=dvg_abl.facing.down] run data modify storage ca:ram stack[-1].facing.direction set value "down"
execute if entity @s[tag=dvg_abl.facing.up] run data modify storage ca:ram stack[-1].facing.direction set value "up"

# =========================================================================================================================

$execute as $(cage) run function ca:dvg_abl/method/cage/update_selected_face/as_cage
$execute as $(tail) on passengers run function ca:dvg_abl/method/cage/update_selected_face/update_head

# =========================================================================================================================

execute anchored eyes run playsound minecraft:block.stone.break master @s ^ ^ ^ 1 1.5

function ca:gnr_lay/delete/int

# =========================================================================================================================
