
# =========================================================================================================================

scoreboard players operation #$this.rdc_pos.x ca.dvg_abl.fun = @s ca.dvg_abl.tail.rdc.x
scoreboard players operation #$this.rdc_pos.y ca.dvg_abl.fun = @s ca.dvg_abl.tail.rdc.y
scoreboard players operation #$this.rdc_pos.z ca.dvg_abl.fun = @s ca.dvg_abl.tail.rdc.z

scoreboard players operation #$this.rdc_pos.x ca.dvg_abl.fun *= #0.1 ca.dvg_abl.fun
scoreboard players operation #$this.rdc_pos.y ca.dvg_abl.fun *= #0.1 ca.dvg_abl.fun
scoreboard players operation #$this.rdc_pos.z ca.dvg_abl.fun *= #0.1 ca.dvg_abl.fun

scoreboard players operation #$this.rdc_pos.x ca.dvg_abl.fun -= #$.translation.x ca.dvg_abl.fun
scoreboard players operation #$this.rdc_pos.y ca.dvg_abl.fun -= #$.translation.y ca.dvg_abl.fun
scoreboard players operation #$this.rdc_pos.z ca.dvg_abl.fun -= #$.translation.z ca.dvg_abl.fun

# =========================================================================================================================

function ca:dvg_abl/instance/method/private/tail_resize/transform with storage ca:ram stack[-1]

# =========================================================================================================================
