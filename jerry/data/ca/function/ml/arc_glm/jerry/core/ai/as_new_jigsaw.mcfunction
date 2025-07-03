

function ca:gnr_lay/new/int

scoreboard players operation \
    @s ca.ml.arc_glm.jerry.jigsaw.linkage = @r[gamemode=!spectator,tag=!ignore] ca.ml.arc_glm.jerry.jigsaw.linkage

execute store result storage ca:ram stack[-1].x float 0.01 run random value -4500..4500
execute store result storage ca:ram stack[-1].y float 0.01 run random value -17999..18000

function ca:ml/arc_glm/jerry/core/ai/rotate with storage ca:ram stack[-1]

function ca:gnr_lay/delete/int



