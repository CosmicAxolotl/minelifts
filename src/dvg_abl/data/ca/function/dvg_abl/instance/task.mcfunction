
# =========================================================================================================================


execute if entity @s[tag=dvg_abl.peeking,tag=!dvg_abl.quick_jump_boost] run return run function ca:dvg_abl/instance/task/peeking

tag @s remove dvg_abl.quick_modifier

function ca:gnr_lay/new/ext

data modify storage ca:ram stack[-1].input set value [  \
    {                                                   \
        forward:false,                                  \
        backward:false,                                 \
        right:false,                                    \
        left:false,                                     \
        jump:false,                                     \
        crouch:false,                                   \
        sprint:false,                                   \
    }                                                   \
]

execute if score @s ca.dvg_abl.cooldown matches -1 run function ca:dvg_abl/actions/digging

function ca:gnr_lay/delete/ext

# =========================================================================================================================

execute store result storage ca:ram stack[-1].id int 1 run scoreboard players get @s ca.dvg_abl.fun

# =========================================================================================================================

execute store result storage ca:ram stack[-1].direction_changed.is byte 1 \
    if function ca:dvg_abl/instance/has_changed run \
        function ca:dvg_abl/instance/task/get_rotation

function ca:dvg_abl/get/reference_list
    execute if data storage ca:ram stack[-1].direction_changed{is:1b} run \
        function ca:dvg_abl/method/cage/update_selected_face with \
            storage ca:ram stack[-1].reference_list

    execute if score @s ca.dvg_abl.cooldown matches 0 run \
        function ca:dvg_abl/method/cage/update_selected_face with \
            storage ca:ram stack[-1].reference_list

execute anchored eyes positioned ^ ^ ^ run function ca:dvg_abl/instance/task/controls

# =========================================================================================================================
