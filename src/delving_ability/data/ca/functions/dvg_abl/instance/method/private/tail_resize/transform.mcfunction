
# =========================================================================================================================

function ca:gnr_lay/new/int

# =========================================================================================================================

data modify storage ca:ram stack[-1] merge value {transformation:{right_rotation:[0.0f,0.0f,0.0f,1.0f],left_rotation: [0.0f,0.0f,0.0f,1.0f],translation: [0.0f,0.0f,0.0f],scale:[0.0f,0.0f,0.0f]}}

$execute store result storage ca:ram stack[-1].transformation.translation[0] float $(scale) run scoreboard players get #$this.rdc_pos.x ca.dvg_abl.fun
$execute store result storage ca:ram stack[-1].transformation.translation[1] float $(scale) run scoreboard players get #$this.rdc_pos.y ca.dvg_abl.fun
$execute store result storage ca:ram stack[-1].transformation.translation[2] float $(scale) run scoreboard players get #$this.rdc_pos.z ca.dvg_abl.fun

data modify storage ca:ram stack[-1].transformation.scale[] set from storage ca:ram stack[-2].block_scale

data modify entity @s transformation set from storage ca:ram stack[-1].transformation

# =========================================================================================================================

function ca:gnr_lay/delete/int

# =========================================================================================================================
