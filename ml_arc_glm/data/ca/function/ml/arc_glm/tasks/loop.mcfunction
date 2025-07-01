

execute as @e[tag=ca.ml.arc_glm.core, tag=!awaken] at @s run \
    function ca:ml/arc_glm/tasks/dormant_core

execute as @e[tag=ca.ml.arc_glm.core, tag=awaken] at @s run \
    function ca:ml/arc_glm/tasks/core

execute as @e[tag=ca.ml.arc_glm.pltf, tag=awaken] at @s run \
    function ca:ml/arc_glm/tasks/platform




execute as @e[tag=ca.ml.arc_glm.djt_blk.snapper] at @s run \
    function ca:ml/arc_glm/tasks/snapper


scoreboard players remove \
    @e[tag=ca.ml.arc_glm.djt_blk,tag=!snapped,scores={ca.ml.arc_glm.random_rot.x=50000..}] ca.ml.arc_glm.random_rot.x 120
scoreboard players remove \
    @e[tag=ca.ml.arc_glm.djt_blk,tag=!snapped,scores={ca.ml.arc_glm.random_rot.y=50000..}] ca.ml.arc_glm.random_rot.y 120
scoreboard players remove \
    @e[tag=ca.ml.arc_glm.djt_blk,tag=!snapped,scores={ca.ml.arc_glm.random_rot.z=50000..}] ca.ml.arc_glm.random_rot.z 120
scoreboard players add \
    @e[tag=ca.ml.arc_glm.djt_blk,tag=!snapped,scores={ca.ml.arc_glm.random_rot.x=..-50000}] ca.ml.arc_glm.random_rot.x 120
scoreboard players add \
    @e[tag=ca.ml.arc_glm.djt_blk,tag=!snapped,scores={ca.ml.arc_glm.random_rot.y=..-50000}] ca.ml.arc_glm.random_rot.y 120
scoreboard players add \
    @e[tag=ca.ml.arc_glm.djt_blk,tag=!snapped,scores={ca.ml.arc_glm.random_rot.z=..-50000}] ca.ml.arc_glm.random_rot.z 120

scoreboard players remove \
    @e[tag=ca.ml.arc_glm.djt_blk,tag=!snapped,scores={ca.ml.arc_glm.random_rot.x=80000..}] ca.ml.arc_glm.random_rot.x 800
scoreboard players remove \
    @e[tag=ca.ml.arc_glm.djt_blk,tag=!snapped,scores={ca.ml.arc_glm.random_rot.y=80000..}] ca.ml.arc_glm.random_rot.y 800
scoreboard players remove \
    @e[tag=ca.ml.arc_glm.djt_blk,tag=!snapped,scores={ca.ml.arc_glm.random_rot.z=80000..}] ca.ml.arc_glm.random_rot.z 800
scoreboard players add \
    @e[tag=ca.ml.arc_glm.djt_blk,tag=!snapped,scores={ca.ml.arc_glm.random_rot.x=..-80000}] ca.ml.arc_glm.random_rot.x 800
scoreboard players add \
    @e[tag=ca.ml.arc_glm.djt_blk,tag=!snapped,scores={ca.ml.arc_glm.random_rot.y=..-80000}] ca.ml.arc_glm.random_rot.y 800
scoreboard players add \
    @e[tag=ca.ml.arc_glm.djt_blk,tag=!snapped,scores={ca.ml.arc_glm.random_rot.z=..-80000}] ca.ml.arc_glm.random_rot.z 800

execute as @e[tag=jigsaw] at @s run \
    function ca:ml/arc_glm/tasks/jigsaw

execute as @e[tag=ca.ml.arc_glm.pltf, tag=!awaken] at @s run \
    function ca:ml/arc_glm/tasks/dormant_platform





