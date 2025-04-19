

data modify storage ca:ram stack[-1].text[3] set value '{"text":"[","color":"red"}'

execute if data storage ca:ram stack[0].input[{forward:true}] run \
    data modify storage ca:ram stack[-1].text[4] set value \
        '[{"text":"","color":"red"},{"keybind":"key.forward"}]'

execute if data storage ca:ram stack[0].input[{left:true}] run \
    data modify storage ca:ram stack[-1].text[5] set value \
        '[{"text":"","color":"red"},{"keybind":"key.left"}]'

execute if data storage ca:ram stack[0].input[{right:true}] run \
    data modify storage ca:ram stack[-1].text[6] set value \
        '[{"text":"","color":"red"},{"keybind":"key.right"}]'

execute if data storage ca:ram stack[0].input[{backward:true}] run \
    data modify storage ca:ram stack[-1].text[7] set value \
        '[{"text":"","color":"red"},{"keybind":"key.back"}]'

data modify storage ca:ram stack[-1].text[8] set value '{"text":"]: ","color":"red"}'

title @s[scores={ca.dvg_abl.cooldown=-1}] actionbar {"nbt": "stack[-1].text[]","storage":"ca:ram","interpret":true,"separator":""}
