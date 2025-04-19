



function ca:gnr_lay/new/int



data modify storage ca:ram stack[-1].elements append from storage ca:ram stack[-2].quaternions[]

execute store result score #$.quaternions_to_operate ca.gnr.fun \
    if data storage ca:ram stack[-1].elements[]

data modify storage ca:ram stack[-1].result set value [0.0f, 0.0f, 0.0f, 0.0f]


execute store result score #$.quaternion.r ca.gnr.fun run data get storage ca:ram stack[-1].elements[0][0] 1000
execute store result score #$.quaternion.i ca.gnr.fun run data get storage ca:ram stack[-1].elements[0][1] 1000
execute store result score #$.quaternion.j ca.gnr.fun run data get storage ca:ram stack[-1].elements[0][2] 1000
execute store result score #$.quaternion.k ca.gnr.fun run data get storage ca:ram stack[-1].elements[0][3] 1000


data remove storage ca:ram stack[-1].elements[0]
scoreboard players remove #$.quaternions_to_operate ca.gnr.fun 1

execute if score #$.quaternions_to_operate ca.gnr.fun matches 1.. run \
    function ca:qtn/operation/private/product_loop


execute store result storage ca:ram stack[-1].result[0] float 0.001 run scoreboard players get #$.quaternion.r ca.gnr.fun
execute store result storage ca:ram stack[-1].result[1] float 0.001 run scoreboard players get #$.quaternion.i ca.gnr.fun
execute store result storage ca:ram stack[-1].result[2] float 0.001 run scoreboard players get #$.quaternion.j ca.gnr.fun
execute store result storage ca:ram stack[-1].result[3] float 0.001 run scoreboard players get #$.quaternion.k ca.gnr.fun



data modify storage ca:ram stack[-2].result set from storage ca:ram stack[-1].result



function ca:gnr_lay/delete/int



