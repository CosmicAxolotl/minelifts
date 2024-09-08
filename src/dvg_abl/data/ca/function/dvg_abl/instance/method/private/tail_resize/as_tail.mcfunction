
# =========================================================================================================================

function ca:gnr_lay/new/int

# =========================================================================================================================

scoreboard players set #$size.x.max ca.dvg_abl.fun -2147483648
scoreboard players set #$size.y.max ca.dvg_abl.fun -2147483648
scoreboard players set #$size.z.max ca.dvg_abl.fun -2147483648

scoreboard players set #$size.x.min ca.dvg_abl.fun 2147483647
scoreboard players set #$size.y.min ca.dvg_abl.fun 2147483647
scoreboard players set #$size.z.min ca.dvg_abl.fun 2147483647

# =========================================================================================================================

execute on passengers run tag @s add tmp.instance

    scoreboard players operation #$size.x.min ca.dvg_abl.fun < @e[type=block_display,distance=..0.001,tag=tmp.instance] ca.dvg_abl.tail.rdc.x
    scoreboard players operation #$size.y.min ca.dvg_abl.fun < @e[type=block_display,distance=..0.001,tag=tmp.instance] ca.dvg_abl.tail.rdc.y
    scoreboard players operation #$size.z.min ca.dvg_abl.fun < @e[type=block_display,distance=..0.001,tag=tmp.instance] ca.dvg_abl.tail.rdc.z

    scoreboard players operation #$size.x.max ca.dvg_abl.fun > @e[type=block_display,distance=..0.001,tag=tmp.instance] ca.dvg_abl.tail.rdc.x
    scoreboard players operation #$size.y.max ca.dvg_abl.fun > @e[type=block_display,distance=..0.001,tag=tmp.instance] ca.dvg_abl.tail.rdc.y
    scoreboard players operation #$size.z.max ca.dvg_abl.fun > @e[type=block_display,distance=..0.001,tag=tmp.instance] ca.dvg_abl.tail.rdc.z

execute on passengers run tag @s remove tmp.instance

# =========================================================================================================================

scoreboard players operation #$size.x ca.dvg_abl.fun = #$size.x.max ca.dvg_abl.fun
scoreboard players operation #$size.y ca.dvg_abl.fun = #$size.y.max ca.dvg_abl.fun
scoreboard players operation #$size.z ca.dvg_abl.fun = #$size.z.max ca.dvg_abl.fun

    scoreboard players operation #$size.x ca.dvg_abl.fun -= #$size.x.min ca.dvg_abl.fun
    scoreboard players operation #$size.y ca.dvg_abl.fun -= #$size.y.min ca.dvg_abl.fun
    scoreboard players operation #$size.z ca.dvg_abl.fun -= #$size.z.min ca.dvg_abl.fun

    scoreboard players operation #$size_sum.x ca.dvg_abl.fun = #$size.x.max ca.dvg_abl.fun
    scoreboard players operation #$size_sum.y ca.dvg_abl.fun = #$size.y.max ca.dvg_abl.fun
    scoreboard players operation #$size_sum.z ca.dvg_abl.fun = #$size.z.max ca.dvg_abl.fun

    scoreboard players operation #$size_sum.x ca.dvg_abl.fun += #$size.x.min ca.dvg_abl.fun
    scoreboard players operation #$size_sum.y ca.dvg_abl.fun += #$size.y.min ca.dvg_abl.fun
    scoreboard players operation #$size_sum.z ca.dvg_abl.fun += #$size.z.min ca.dvg_abl.fun


scoreboard players add #$size.x ca.dvg_abl.fun 1
scoreboard players add #$size.y ca.dvg_abl.fun 1
scoreboard players add #$size.z ca.dvg_abl.fun 1

scoreboard players set #$size_max ca.dvg_abl.fun -2147483648
    scoreboard players operation #$size_max ca.dvg_abl.fun > #$size.x ca.dvg_abl.fun
    scoreboard players operation #$size_max ca.dvg_abl.fun > #$size.y ca.dvg_abl.fun
    scoreboard players operation #$size_max ca.dvg_abl.fun > #$size.z ca.dvg_abl.fun

scoreboard players set #$block_scale ca.dvg_abl.fun 025000000
    scoreboard players operation #$block_scale ca.dvg_abl.fun /= #$size_max ca.dvg_abl.fun 

execute store result storage ca:ram stack[-1].block_scale float 0.00000001 run scoreboard players get #$block_scale ca.dvg_abl.fun


scoreboard players set #0.5 ca.dvg_abl.fun 5

    scoreboard players operation #$.translation.x ca.dvg_abl.fun = #$size_sum.x ca.dvg_abl.fun
    scoreboard players operation #$.translation.y ca.dvg_abl.fun = #$size_sum.y ca.dvg_abl.fun
    scoreboard players operation #$.translation.z ca.dvg_abl.fun = #$size_sum.z ca.dvg_abl.fun

scoreboard players add #$.translation.x ca.dvg_abl.fun 1
scoreboard players add #$.translation.y ca.dvg_abl.fun 1
scoreboard players add #$.translation.z ca.dvg_abl.fun 1

    scoreboard players operation #$.translation.x ca.dvg_abl.fun *= #0.5 ca.dvg_abl.fun
    scoreboard players operation #$.translation.y ca.dvg_abl.fun *= #0.5 ca.dvg_abl.fun
    scoreboard players operation #$.translation.z ca.dvg_abl.fun *= #0.5 ca.dvg_abl.fun


scoreboard players set #0.1 ca.dvg_abl.fun 10

execute on passengers run function ca:dvg_abl/instance/method/private/tail_resize/as_instance

# =========================================================================================================================

function ca:gnr_lay/delete/int

# =========================================================================================================================
