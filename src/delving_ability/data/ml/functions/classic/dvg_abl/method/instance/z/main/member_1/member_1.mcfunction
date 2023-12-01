
execute if data storage ca: tmp{move:"north"} run
    data modify storage ca: tmp2.text set value \
        '{"score":{{"objective":"ml.classic.dlv_abl.fun","name":"#$.tmp.face.south"}}'

execute if data storage ca: tmp{move:"south"} run
    data modify storage ca: tmp2.text set value \
        '{"score":{{"objective":"ml.classic.dlv_abl.fun","name":"#$.tmp.face.north"}}'

execute if data storage ca: tmp{move:"east"} run
    data modify storage ca: tmp2.text set value \
        '{"score":{{"objective":"ml.classic.dlv_abl.fun","name":"#$.tmp.face.west"}}'

execute if data storage ca: tmp{move:"west"} run
    data modify storage ca: tmp2.text set value \
        '{"score":{{"objective":"ml.classic.dlv_abl.fun","name":"#$.tmp.face.east"}}'

execute if data storage ca: tmp{move:"down"} run
    data modify storage ca: tmp2.text set value \
        '{"score":{{"objective":"ml.classic.dlv_abl.fun","name":"#$.tmp.face.up"}}'

execute if data storage ca: tmp{move:"down"} run
    data modify storage ca: tmp2.text set value \
        '{"score":{{"objective":"ml.classic.dlv_abl.fun","name":"#$.tmp.face.down"}}'
