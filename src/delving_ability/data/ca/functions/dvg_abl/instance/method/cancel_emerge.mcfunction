
# =========================================================================================================================

function ca:gnr_lay/new/int

# =========================================================================================================================

$execute as $(wind_rose) on passengers run data modify entity @s view_range set value 1.0f
$execute as $(wind_rose) run data modify entity @s view_range set value 1.0f

$execute as $(cage) on passengers run data modify entity @s view_range set value 1.0f
$execute as $(cage) run data modify entity @s view_range set value 1.0f

$execute as $(tail) on passengers run data modify entity @s view_range set value 1.0f
$execute as $(tail) run data modify entity @s view_range set value 1.0f

$execute as $(interaction) run data modify entity @s {} merge value {height:1.0f,width:1.0f}

execute on vehicle positioned ~ ~512 ~ run function ca:dvg_abl/instance/method/private/positionate

gamemode adventure @s

tag @s remove dvg_abl.peeking

effect give @s blindness infinite 0 true

# =========================================================================================================================

function ca:gnr_lay/delete/int

# =========================================================================================================================
