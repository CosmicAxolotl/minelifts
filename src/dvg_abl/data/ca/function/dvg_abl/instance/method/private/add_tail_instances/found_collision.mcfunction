
# =========================================================================================================================

scoreboard players operation #$collision ca.dvg_abl.fun = @s ca.dvg_abl.tail.member
execute on vehicle on passengers if score @s ca.dvg_abl.tail.member < #$collision ca.dvg_abl.fun run kill @s

execute on vehicle on passengers run scoreboard players operation @s ca.dvg_abl.tail.member -= #$collision ca.dvg_abl.fun
execute on vehicle on passengers run scoreboard players remove @s ca.dvg_abl.tail.member 1

# =========================================================================================================================

return 1

# =========================================================================================================================
