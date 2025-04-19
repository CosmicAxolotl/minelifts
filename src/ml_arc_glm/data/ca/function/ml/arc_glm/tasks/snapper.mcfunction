
function ca:gnr_lay/new/int

execute on vehicle \
    if entity @s[tag=complete] run data modify storage ca:ram stack[-1].test.is_complete set value true


#execute if data storage ca:ram stack[-1].test{is_complete:true} run ride @s dismount

tag @s add idle
tag @s[predicate=ca:ml/arc_glm/djt_blk/is_snapping] remove idle

tag @s[predicate=!ca:ml/arc_glm/djt_blk/is_snapping] remove snapped
tag @s[tag=!snapped] remove already_checked

function ca:gnr_lay/delete/int
