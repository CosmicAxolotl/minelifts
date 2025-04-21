

function ca:gnr_lay/new/int

tag @s add idle
tag @s[predicate=ca:ml/arc_glm/djt_blk/is_snapping] remove idle

tag @s[predicate=!ca:ml/arc_glm/djt_blk/is_snapping] remove snapped
tag @s[tag=!snapped] remove already_checked

function ca:gnr_lay/delete/int

