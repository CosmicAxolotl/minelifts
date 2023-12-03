

execute if data storage ca: tmp{move:"north"} run \
    data modify storage ca:tmp tmp2.text set value \
        '{"score":{"objective":"ml.classic.dlv_abl.fun","name":"#$.tmp.face.south"},"color":"yellow"}'

execute if data storage ca: tmp{move:"south"} run \
    data modify storage ca:tmp tmp2.text set value \
        '{"score":{"objective":"ml.classic.dlv_abl.fun","name":"#$.tmp.face.north"},"color":"yellow"}'

execute if data storage ca: tmp{move:"east"} run \
    data modify storage ca:tmp tmp2.text set value \
        '{"score":{"objective":"ml.classic.dlv_abl.fun","name":"#$.tmp.face.east"},"color":"yellow"}'

execute if data storage ca: tmp{move:"west"} run \
    data modify storage ca:tmp tmp2.text set value \
        '{"score":{"objective":"ml.classic.dlv_abl.fun","name":"#$.tmp.face.west"},"color":"yellow"}'

execute if data storage ca: tmp{move:"up"} run \
    data modify storage ca:tmp tmp2.text set value \
        '{"score":{"objective":"ml.classic.dlv_abl.fun","name":"#$.tmp.face.up"},"color":"yellow"}'

execute if data storage ca: tmp{move:"down"} run \
    data modify storage ca:tmp tmp2.text set value \
        '{"score":{"objective":"ml.classic.dlv_abl.fun","name":"#$.tmp.face.down"},"color":"yellow"}'


