
# =========================================================================================================================

scoreboard players add #$direction_step ca.dvg_abl.fun 1

execute positioned ~ ~1 ~ unless function ca:dvg_abl/method/resonance/can_travel unless function ca:dvg_abl/method/resonance/can_emerge run return run scoreboard players operation #$direction_step ca.dvg_abl.fun *= #-1 ca.dvg_abl.fun

execute positioned ~ ~1 ~ unless function ca:dvg_abl/method/resonance/can_emerge run function ca:dvg_abl/method/pivot/resonance/direction/up

# =========================================================================================================================
