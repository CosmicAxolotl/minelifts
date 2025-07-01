




execute \
    if score #$.translation.tmp.x ca.ml.arc_glm.fun matches 2.. \
    run \
        return run function ca:ml/arc_glm/tasks/private/vectors/2_0_0 with storage ca:ram stack[-1].compound_vector.2_0_0

execute \
    if score #$.translation.tmp.x ca.ml.arc_glm.fun matches ..-2 \
    run \
        return run function ca:ml/arc_glm/tasks/private/vectors/-2_0_0 with storage ca:ram stack[-1].compound_vector.-2_0_0

execute \
    if score #$.translation.tmp.y ca.ml.arc_glm.fun matches 2.. \
    run \
        return run function ca:ml/arc_glm/tasks/private/vectors/0_2_0 with storage ca:ram stack[-1].compound_vector.0_2_0

execute \
    if score #$.translation.tmp.y ca.ml.arc_glm.fun matches ..-2 \
    run \
        return run function ca:ml/arc_glm/tasks/private/vectors/0_-2_0 with storage ca:ram stack[-1].compound_vector.0_-2_0

execute \
    if score #$.translation.tmp.z ca.ml.arc_glm.fun matches 2.. \
    run \
        return run function ca:ml/arc_glm/tasks/private/vectors/0_0_2 with storage ca:ram stack[-1].compound_vector.0_0_2

execute \
    if score #$.translation.tmp.z ca.ml.arc_glm.fun matches ..-2 \
    run \
        return run function ca:ml/arc_glm/tasks/private/vectors/0_0_-2 with storage ca:ram stack[-1].compound_vector.0_0_-2





execute \
    if score #$.translation.tmp.x ca.ml.arc_glm.fun matches 1.. \
    if score #$.translation.tmp.y ca.ml.arc_glm.fun matches 1.. \
    if score #$.translation.tmp.z ca.ml.arc_glm.fun matches 1.. \
    run \
        return run function ca:ml/arc_glm/tasks/private/vectors/1_1_1 with storage ca:ram stack[-1].compound_vector.1_1_1

execute \
    if score #$.translation.tmp.x ca.ml.arc_glm.fun matches ..-1 \
    if score #$.translation.tmp.y ca.ml.arc_glm.fun matches ..-1 \
    if score #$.translation.tmp.z ca.ml.arc_glm.fun matches ..-1 \
    run \
        return run function ca:ml/arc_glm/tasks/private/vectors/-1_-1_-1 with storage ca:ram stack[-1].compound_vector.-1_-1_-1

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
particle dust{color:[ 0.00784313725, 0.9294117647, 0.22352941176], scale:4} ~ ~0.5 ~ 0.5 0.5 0.5 0 1 normal @a[gamemode=spectator]

