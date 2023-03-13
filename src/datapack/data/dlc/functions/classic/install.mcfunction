# install module by numerical id
scoreboard players operation int.dlc.minelifts ml.registry = int.current_top ml.registry
scoreboard players add int.current_top ml.registry 1

# declare module to count
scoreboard players add int.dlc.registered ml.rom 1

# declare module to core
data modify storage ml:parse parse[{"op":"declare"}].module[{id:"minelifts:classic"}].properties set value { display: { name: '{"translate":"minelifts.classic.title"}' , description:'{"translate":"minelifts.classic.description"}' , display_head : { SkullID: "NULL" } } , size: {} }