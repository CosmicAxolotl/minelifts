

function ca:gnr_lay/new/int

tag @s add idle

execute if predicate {                  \
        "condition": "entity_properties",   \
        "entity": "this",                   \
        "predicate": {                      \
            "vehicle": {}                   \
        }                                   \
    } run \
        tag @s remove idle

execute unless predicate {                  \
        "condition": "entity_properties",   \
        "entity": "this",                   \
        "predicate": {                      \
            "vehicle": {}                   \
        }                                   \
    } run \
        tag @s remove snapped

tag @s[tag=!snapped] remove already_checked

execute if entity @s[tag=snapped] run \
    return run function ca:gnr_lay/delete/int

tag @s add tmp

execute store success storage ca:ram stack[-1].test.idle byte 1 if entity @s[tag=idle,x=0]
execute store success storage ca:ram stack[-1].test.clockwise byte 1 if entity @s[tag=clockwise]


execute at @s \
    on origin on vehicle \
    facing entity @s feet \
    facing ^ ^ ^-1 run \
        function ca:ml/arc_glm/tasks/snapper/as_disjointed_block


tag @s remove tmp

function ca:gnr_lay/delete/int

