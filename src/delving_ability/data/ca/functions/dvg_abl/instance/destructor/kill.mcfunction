
# =========================================================================================================================

$execute as $(wind_rose) on passengers run kill @s
    $kill $(wind_rose)

$execute as $(cage) on passengers run kill @s
    $kill $(cage)

$execute as $(tail) on passengers run kill @s
    $kill $(tail)

$kill $(interaction)
$kill $(vehicle)

# =========================================================================================================================
