



execute \
    if score #$.translation.tmp.x ca.ml.arc_glm.fun matches 1.. \
    run \
        return run function ca:ml/arc_glm/tasks/private/vectors/1_0_0 with storage ca:ram stack[-1].compound_vector.1_0_0

execute \
    if score #$.translation.tmp.x ca.ml.arc_glm.fun matches ..-1 \
    run \
        return run function ca:ml/arc_glm/tasks/private/vectors/-1_0_0 with storage ca:ram stack[-1].compound_vector.-1_0_0

execute \
    if score #$.translation.tmp.y ca.ml.arc_glm.fun matches 1.. \
    run \
        return run function ca:ml/arc_glm/tasks/private/vectors/0_1_0 with storage ca:ram stack[-1].compound_vector.0_1_0

execute \
    if score #$.translation.tmp.y ca.ml.arc_glm.fun matches ..-1 \
    run \
        return run function ca:ml/arc_glm/tasks/private/vectors/0_-1_0 with storage ca:ram stack[-1].compound_vector.0_-1_0

execute \
    if score #$.translation.tmp.z ca.ml.arc_glm.fun matches 1.. \
    run \
        return run function ca:ml/arc_glm/tasks/private/vectors/0_0_1 with storage ca:ram stack[-1].compound_vector.0_0_1

execute \
    if score #$.translation.tmp.z ca.ml.arc_glm.fun matches ..-1 \
    run \
        return run function ca:ml/arc_glm/tasks/private/vectors/0_0_-1 with storage ca:ram stack[-1].compound_vector.0_0_-1


tp @s ~ ~ ~ 0 0

