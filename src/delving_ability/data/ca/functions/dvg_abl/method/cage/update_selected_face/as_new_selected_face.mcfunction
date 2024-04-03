
# =========================================================================================================================

execute if entity @s[tag=face.south] store result score #$steps ca.dvg_abl.fun run data get storage ca:ram stack[-1].direction.north
execute if entity @s[tag=face.north] store result score #$steps ca.dvg_abl.fun run data get storage ca:ram stack[-1].direction.south
execute if entity @s[tag=face.west] store result score #$steps ca.dvg_abl.fun run data get storage ca:ram stack[-1].direction.east
execute if entity @s[tag=face.east] store result score #$steps ca.dvg_abl.fun run data get storage ca:ram stack[-1].direction.west
execute if entity @s[tag=face.down] store result score #$steps ca.dvg_abl.fun run data get storage ca:ram stack[-1].direction.up
execute if entity @s[tag=face.up] store result score #$steps ca.dvg_abl.fun run data get storage ca:ram stack[-1].direction.down

# =========================================================================================================================

tellraw @a {"score":{"name": "#$steps","objective":"ca.dvg_abl.fun"}}

function ca:gnr_lay/new/int

data modify storage ca:ram stack[-1].text set value []

# =========================================================================================================================

execute unless score #$steps ca.dvg_abl.fun matches -1..1 run data modify storage ca:ram stack[-1].text append value '{"text":"","color":"yellow"}'

execute if score #$steps ca.dvg_abl.fun matches 1 run data modify storage ca:ram stack[-1].text append value '{"text":"↑","color":"#6FF013"}'
execute if score #$steps ca.dvg_abl.fun matches -1 run data modify storage ca:ram stack[-1].text append value '{"text":"✖","color":"#F01313"}'

scoreboard players set #-1 ca.dvg_abl.fun -1
execute if score #$steps ca.dvg_abl.fun matches ..-1 run scoreboard players operation #$steps ca.dvg_abl.fun *= #-1 ca.dvg_abl.fun

execute if score #$steps ca.dvg_abl.fun matches 17.. run data modify storage ca:ram stack[-1].text append value '{"text":"+16"}'
execute if score #$steps ca.dvg_abl.fun matches 2..16 run data modify storage ca:ram stack[-1].text append value '{"score":{"name":"#$steps","objective":"ca.dvg_abl.fun"}}'


data merge entity @s {text:'{"nbt":"stack[-1].text[]","separator":"","storage":"ca:ram","interpret":true}'}

# =========================================================================================================================

function ca:gnr_lay/delete/int

# =========================================================================================================================
