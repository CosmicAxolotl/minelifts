
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

function ca:gnr_lay/new/int

# =========================================================================================================================

scoreboard players operation #$this.rdc_pos.x ca.dvg_abl.fun *= #$block_scale ca.dvg_abl.fun
scoreboard players operation #$this.rdc_pos.y ca.dvg_abl.fun *= #$block_scale ca.dvg_abl.fun
scoreboard players operation #$this.rdc_pos.z ca.dvg_abl.fun *= #$block_scale ca.dvg_abl.fun


data modify storage ca:ram stack[-1] merge value {transformation:{right_rotation:[0.0f,0.0f,0.0f,1.0f],left_rotation:[0.0f,0.0f,0.0f,1.0f],translation:[0.0f,0.0f,0.0f],scale:[0.0f,0.0f,0.0f]}}

    execute store result storage ca:ram stack[-1].transformation.translation[0] float 0.000000001 run scoreboard players get #$this.rdc_pos.x ca.dvg_abl.fun
    execute store result storage ca:ram stack[-1].transformation.translation[1] float 0.000000001 run scoreboard players get #$this.rdc_pos.y ca.dvg_abl.fun
    execute store result storage ca:ram stack[-1].transformation.translation[2] float 0.000000001 run scoreboard players get #$this.rdc_pos.z ca.dvg_abl.fun

    data modify storage ca:ram stack[-1].transformation.scale[] set from storage ca:ram stack[-2].block_scale


execute if score @s ca.dvg_abl.tail.member matches 0 run function ca:dvg_abl/instance/method/private/tail_resize/as_head
execute if score @s ca.dvg_abl.tail.member matches 1.. run data modify storage ca:ram stack[-1] merge value {block_state:{Name:"minecraft:conduit"}}
execute if entity @s[tag=dvg_abl.member.start] run data modify storage ca:ram stack[-1] merge value {block_state:{Name:"minecraft:light_blue_stained_glass"}}

data modify entity @s {} merge from storage ca:ram stack[-1]

# =========================================================================================================================

function ca:gnr_lay/delete/int

# =========================================================================================================================
