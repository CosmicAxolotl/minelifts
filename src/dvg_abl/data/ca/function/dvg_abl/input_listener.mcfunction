

function ca:gnr_lay/new/int

data modify storage ca:ram stack[-1] merge value {                          \
    text:[                                                                  \
        '""',                                                               \
        '[{"text":"","color":"gray"},"[",{"keybind":"key.sprint"},"]"]',    \
        '[{"text":"","color":"gray"},"[",{"keybind":"key.sneak"},"]"]',     \
        '[{"text":"","color":"gray"},"[",{"keybind":"key.forward"},"]"]',   \
        '[{"text":"","color":"gray"},"[",{"keybind":"key.left"},"]"]',      \
        '[{"text":"","color":"gray"},"[",{"keybind":"key.back"},"]"]',      \
        '[{"text":"","color":"gray"},"[",{"keybind":"key.right"},"]"]',     \
        '[{"text":"","color":"gray"},"[",{"keybind":"key.jump"},"]"]'       \
    ]                                                                       \
}

execute if data storage ca:ram stack[0].input[{sprint:true}] run \
    data modify storage ca:ram stack[-1].text[1] set value \
        '[{"text":"","color":"yellow"},"[",{"keybind":"key.sprint"},"]"]'

execute if data storage ca:ram stack[0].input[{crouch:true}] run \
    data modify storage ca:ram stack[-1].text[2] set value \
        '[{"text":"","color":"yellow"},"[",{"keybind":"key.sneak"},"]"]'

execute if data storage ca:ram stack[0].input[{forward:true}] run \
    data modify storage ca:ram stack[-1].text[3] set value \
        '[{"text":"","color":"yellow"},"[",{"keybind":"key.forward"},"]"]'

execute if data storage ca:ram stack[0].input[{left:true}] run \
    data modify storage ca:ram stack[-1].text[4] set value \
        '[{"text":"","color":"yellow"},"[",{"keybind":"key.left"},"]"]'

execute if data storage ca:ram stack[0].input[{backward:true}] run \
    data modify storage ca:ram stack[-1].text[5] set value \
        '[{"text":"","color":"yellow"},"[",{"keybind":"key.back"},"]"]'

execute if data storage ca:ram stack[0].input[{right:true}] run \
    data modify storage ca:ram stack[-1].text[6] set value \
        '[{"text":"","color":"yellow"},"[",{"keybind":"key.right"},"]"]'

execute if data storage ca:ram stack[0].input[{jump:true}] run \
    data modify storage ca:ram stack[-1].text[7] set value \
        '[{"text":"","color":"yellow"},"[",{"keybind":"key.jump"},"]"]'


title @s actionbar {"nbt": "stack[-1].text[]","storage":"ca:ram","interpret":true,"separator":" | "}

function ca:gnr_lay/delete/int

