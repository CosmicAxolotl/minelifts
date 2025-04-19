
execute if entity @s[tag=!dvg_abl] run return fail

data modify storage ca:ram stack[-1] merge value {                          \
    text:[                                                                  \
        '""',                                                               \
        '[{"text":"","color":"gray"},"[",{"keybind":"key.sneak"},"]"]',     \
        '{"text":" + ","color":"gray"}',                                    \
        '{"text":"[","color":"#AFAFCA"}',                                   \
        '[{"text":"","color":"yellow"},{"keybind":"key.forward"}]',         \
        '[{"text":"","color":"yellow"},{"keybind":"key.left"}]',            \
        '[{"text":"","color":"yellow"},{"keybind":"key.right"}]',           \
        '[{"text":"","color":"yellow"},{"keybind":"key.back"}]',            \
        '{"text":"]: ","color":"gray"}',                                    \
        '"Dig.   "',                                                        \
        '[{"text":"","color":"gray"},"[",{"keybind":"key.jump"},"]: "]',    \
        '["",{"text":"Show map.","color":"gray"}]',                         \
    ]                                                                       \
}

execute if data storage ca:ram stack[0].input[{crouch:true}] run \
    data modify storage ca:ram stack[-1].text set value [                   \
        '""',                                                               \
        '[{"text":"","color":"yellow"},"[",{"keybind":"key.sneak"},"]"]',   \
        '{"text":" + ","color":"yellow"}',                                  \
        '{"text":"[","color":"#AFAF55"}',                                   \
        '[{"text":"","color":"yellow"},{"keybind":"key.forward"}]',         \
        '[{"text":"","color":"yellow"},{"keybind":"key.left"}]',            \
        '[{"text":"","color":"yellow"},{"keybind":"key.right"}]',           \
        '[{"text":"","color":"yellow"},{"keybind":"key.back"}]',            \
        '{"text":"]: ","color":"#AFAF55"}',                                 \
        '"Quick Dig.   "',                                                  \
        '[{"text":"","color":"gray"},"[",{"keybind":"key.jump"},"]: "]',    \
        '["",{"text":"Show map.","color":"gray"}]',                         \
    ]

execute if data storage ca:ram stack[0].input[{crouch:true}] run \
    tag @s add dvg_abl.quick_modifier


execute if data storage ca:ram stack[0].input[{jump:true}] run \
    data modify storage ca:ram stack[-1].text[10] set value \
        '[{"text":"","color":"yellow"},"[",{"keybind":"key.jump"},"]: "]'


execute if data storage ca:ram stack[0].input[{jump:true}] run \
    data modify storage ca:ram stack[-1].text[11] set value \
        '["Show map."]'

execute if data storage ca:ram stack[0].input[{jump:true}] run \
    scoreboard players set @s ca.dvg_abl.map_hold 1

execute if data storage ca:ram stack[0].input[{forward:false}] run \
    data modify storage ca:ram stack[-1].text[4] set value \
        '[{"text":"","color":"#8F8F8F"},{"keybind":"key.forward"}]'

execute if data storage ca:ram stack[0].input[{left:false}] run \
    data modify storage ca:ram stack[-1].text[5] set value \
        '[{"text":"","color":"#8F8F8F"},{"keybind":"key.left"}]'

execute if data storage ca:ram stack[0].input[{right:false}] run \
    data modify storage ca:ram stack[-1].text[6] set value \
        '[{"text":"","color":"#8F8F8F"},{"keybind":"key.right"}]'

execute if data storage ca:ram stack[0].input[{backward:false}] run \
    data modify storage ca:ram stack[-1].text[7] set value \
        '[{"text":"","color":"#8F8F8F"},{"keybind":"key.back"}]'


scoreboard players set #$.move_keybind_strokes ca.dvg_abl.fun 0

execute if data storage ca:ram stack[0].input[{forward:true}] run \
    scoreboard players add #$.move_keybind_strokes ca.dvg_abl.fun 1

execute if data storage ca:ram stack[0].input[{backward:true}] run \
    scoreboard players add #$.move_keybind_strokes ca.dvg_abl.fun 1

execute if data storage ca:ram stack[0].input[{right:true}] run \
    scoreboard players add #$.move_keybind_strokes ca.dvg_abl.fun 1

execute if data storage ca:ram stack[0].input[{left:true}] run \
    scoreboard players add #$.move_keybind_strokes ca.dvg_abl.fun 1


execute if score #$.move_keybind_strokes ca.dvg_abl.fun matches 1 run \
    data modify storage ca:ram stack[-1].text[3] set value \
        '{"text":"[","color":"yellow"}'

execute if score #$.move_keybind_strokes ca.dvg_abl.fun matches 1 run \
    data modify storage ca:ram stack[-1].text[8] set value \
        '{"text":"]: ","color":"yellow"}'
        

execute if score #$.move_keybind_strokes ca.dvg_abl.fun matches 2.. run \
    return run function ca:dvg_abl/actions/digging/invalid

title @s[scores={ca.dvg_abl.cooldown=-1}] actionbar {"nbt": "stack[-1].text[]","storage":"ca:ram","interpret":true,"separator":""}

execute \
    unless data storage \
        ca:ram stack[0].input[{forward:false,backward:false,right:false,left:false}] run \
        function ca:dvg_abl/actions/digging/dig

