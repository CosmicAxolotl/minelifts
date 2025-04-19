

data modify storage ca:ram stack[-1].pool append from storage ca:ram stack[-1].pool[0]
data remove storage ca:ram stack[-1].pool[0]

scoreboard players remove #$.random_roll ca.ml.arc_glm.fun 1

execute if score #$.random_roll ca.ml.arc_glm.fun matches 1.. run \
    function ca:ml/arc_glm/structure/private/snap/roll_pool

