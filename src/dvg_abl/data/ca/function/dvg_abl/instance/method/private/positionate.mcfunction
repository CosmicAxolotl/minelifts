# =========================================================================================================================

execute unless entity @e[type=item_display,tag=dvg_abl.vehicle,distance=..32,limit=1] run return run function ca:dvg_abl/instance/method/private/positionate_tasks

execute positioned ~ ~32 ~ run function ca:dvg_abl/instance/method/private/positionate

# =========================================================================================================================
