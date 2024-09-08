
# =========================================================================================================================

$scoreboard players operation $(vehicle) ca.dvg_abl.fun = @s ca.dvg_abl.fun
$scoreboard players operation $(tail) ca.dvg_abl.fun = @s ca.dvg_abl.fun
$scoreboard players operation $(cage) ca.dvg_abl.fun = @s ca.dvg_abl.fun

$tag $(vehicle) add dvg_abl.vehicle
$tag $(cage) add dvg_abl.cage
$tag $(tail) add dvg_abl.tail

$ride @s mount $(vehicle)

# =========================================================================================================================
