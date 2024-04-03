
# =========================================================================================================================

function ca:gnr_lay/new/int

scoreboard players set #-1 ca.dvg_abl.fun -1

data modify storage ca:ram stack[-1].resonance set value {south:"NAN",north:"NAN",west:"NAN",east:"NAN",down:"NAN",up:"NAN"}

# =========================================================================================================================

scoreboard players set #$direction_step ca.dvg_abl.fun 0
function ca:dvg_abl/method/pivot/resonance/direction/south

execute store result storage ca:ram stack[-1].resonance.south int 1 run scoreboard players get #$direction_step ca.dvg_abl.fun

# =========================================================================================================================

scoreboard players set #$direction_step ca.dvg_abl.fun 0
function ca:dvg_abl/method/pivot/resonance/direction/north

execute store result storage ca:ram stack[-1].resonance.north int 1 run scoreboard players get #$direction_step ca.dvg_abl.fun

# =========================================================================================================================

scoreboard players set #$direction_step ca.dvg_abl.fun 0
function ca:dvg_abl/method/pivot/resonance/direction/west

execute store result storage ca:ram stack[-1].resonance.west int 1 run scoreboard players get #$direction_step ca.dvg_abl.fun

# =========================================================================================================================

scoreboard players set #$direction_step ca.dvg_abl.fun 0
function ca:dvg_abl/method/pivot/resonance/direction/east

execute store result storage ca:ram stack[-1].resonance.east int 1 run scoreboard players get #$direction_step ca.dvg_abl.fun

# =========================================================================================================================

scoreboard players set #$direction_step ca.dvg_abl.fun 0
function ca:dvg_abl/method/pivot/resonance/direction/down

execute store result storage ca:ram stack[-1].resonance.down int 1 run scoreboard players get #$direction_step ca.dvg_abl.fun

# =========================================================================================================================

scoreboard players set #$direction_step ca.dvg_abl.fun 0
function ca:dvg_abl/method/pivot/resonance/direction/up

execute store result storage ca:ram stack[-1].resonance.up int 1 run scoreboard players get #$direction_step ca.dvg_abl.fun

# =========================================================================================================================

data modify storage ca:ram stack[-2] merge from storage ca:ram stack[-1]

function ca:gnr_lay/delete/int

# =========================================================================================================================
