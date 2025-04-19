
tp @e[tag=tmp,limit=1] @s

execute if predicate \
    {\
        condition:"entity_properties",\
        entity:"this",\
        predicate:{\
            flags:{\
                is_on_ground:true \
            }\
        }\
    } run \
        return 1

