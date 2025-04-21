


execute as @e[tag=ca.ml.arc_glm.core, tag=!awaken] at @s run \
    function ca:ml/arc_glm/tasks/dormant_core

execute as @e[tag=ca.ml.arc_glm.pltf, tag=awaken] at @s run \
    function ca:ml/arc_glm/tasks/platform


execute as @e[tag=ca.ml.arc_glm.core, tag=awaken] at @s run \
    function ca:ml/arc_glm/tasks/core


execute as @e[tag=ca.ml.arc_glm.djt_blk.snapper] at @s run \
    function ca:ml/arc_glm/tasks/snapper

execute as @e[tag=ca.ml.arc_glm.djt_blk,tag=!snapped] at @s run \
    function ca:ml/arc_glm/tasks/disjointed_block

execute as @e[tag=jigsaw] at @s run \
    function ca:ml/arc_glm/tasks/jigsaw

execute as @e[tag=ca.ml.arc_glm.pltf, tag=!awaken] at @s run \
    function ca:ml/arc_glm/tasks/dormant_platform





