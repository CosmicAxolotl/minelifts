


function ca:gnr_lay/new/int


data modify storage ca:ram stack[-1].jigsaw set from entity @s data

execute store success storage ca:ram stack[-1].there_is.block byte 1 if data storage ca:ram stack[-1].jigsaw.pool.block[]
execute store success storage ca:ram stack[-1].there_is.stairs byte 1 if data storage ca:ram stack[-1].jigsaw.pool.stairs[]
execute store success storage ca:ram stack[-1].there_is.slab byte 1 if data storage ca:ram stack[-1].jigsaw.pool.slab[]
execute store success storage ca:ram stack[-1].there_is.wall byte 1 if data storage ca:ram stack[-1].jigsaw.pool.wall[]

execute if data storage ca:ram stack[-1].there_is{block:false, stairs:false, slab:false, wall:false} on vehicle run tag @s add complete

execute if data storage ca:ram stack[-1].there_is{block:false} on vehicle on passengers run ride @s[tag=block,tag=!snapped] dismount
execute if data storage ca:ram stack[-1].there_is{stairs:false} on vehicle on passengers run ride @s[tag=stairs,tag=!snapped] dismount
execute if data storage ca:ram stack[-1].there_is{slab:false} on vehicle on passengers run ride @s[tag=slab,tag=!snapped] dismount
execute if data storage ca:ram stack[-1].there_is{wall:false} on vehicle on passengers run ride @s[tag=wall,tag=!snapped] dismount

execute on vehicle if entity @s[tag=complete] run return run function ca:gnr_lay/delete/int

execute if data storage ca:ram stack[-1].there_is{block:true} on vehicle run function ca:ml/arc_glm/tasks/private/jigsaw_call/block
execute if data storage ca:ram stack[-1].there_is{stairs:true} on vehicle run function ca:ml/arc_glm/tasks/private/jigsaw_call/stairs
execute if data storage ca:ram stack[-1].there_is{slab:true} on vehicle run function ca:ml/arc_glm/tasks/private/jigsaw_call/slab
execute if data storage ca:ram stack[-1].there_is{wall:true} on vehicle run function ca:ml/arc_glm/tasks/private/jigsaw_call/wall

function ca:gnr_lay/delete/int



