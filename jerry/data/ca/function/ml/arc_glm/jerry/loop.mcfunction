
execute \
    as @e[tag=ca.ml.arc_glm.pltf,tag=jerry,tag=awaken,limit=1] at @s run \
        function ca:ml/arc_glm/jerry/as_platform

execute as @n[type=block_display,tag=jigsaw,tag=low_health_cover] \
    at @s unless entity @e[type=block_display,distance=..1,tag=ca.ml.arc_glm.core] run \
        function ca:ml/arc_glm/delete/jigsaw