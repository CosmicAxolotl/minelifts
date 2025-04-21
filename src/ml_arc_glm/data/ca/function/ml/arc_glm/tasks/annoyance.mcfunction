
scoreboard players remove @s[scores={ca.ml.arc_glm.disturbance=0..}] ca.ml.arc_glm.disturbance 1

execute \
    unless predicate {                      \
        condition: "entity_properties",     \
        entity: "this",                     \
        predicate: {                        \
            periodic_tick: 20               \
        }                                   \
    } run \
        return fail

execute unless predicate {condition:"random_chance",chance:0.75} run return fail

execute unless entity @a[gamemode=!creative,gamemode=!spectator,distance=..16] run return fail

scoreboard players add @s ca.ml.arc_glm.disturbance 100
scoreboard players set @s[scores={ca.ml.arc_glm.disturbance=3601..}] ca.ml.arc_glm.disturbance 3600

return 1

