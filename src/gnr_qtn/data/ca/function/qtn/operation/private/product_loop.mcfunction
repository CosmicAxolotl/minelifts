

scoreboard players set #1000 ca.gnr.fun 1000

scoreboard players operation #$.quaternion.a.0 ca.gnr.fun = #$.quaternion.r ca.gnr.fun
scoreboard players operation #$.quaternion.b.0 ca.gnr.fun = #$.quaternion.i ca.gnr.fun
scoreboard players operation #$.quaternion.c.0 ca.gnr.fun = #$.quaternion.j ca.gnr.fun
scoreboard players operation #$.quaternion.d.0 ca.gnr.fun = #$.quaternion.k ca.gnr.fun

scoreboard players set #$.quaternion.r ca.gnr.fun 0
scoreboard players set #$.quaternion.i ca.gnr.fun 0
scoreboard players set #$.quaternion.j ca.gnr.fun 0
scoreboard players set #$.quaternion.k ca.gnr.fun 0

execute store result score #$.quaternion.a.1 ca.gnr.fun run data get storage ca:ram stack[-1].elements[0][0] 1000
execute store result score #$.quaternion.b.1 ca.gnr.fun run data get storage ca:ram stack[-1].elements[0][1] 1000
execute store result score #$.quaternion.c.1 ca.gnr.fun run data get storage ca:ram stack[-1].elements[0][2] 1000
execute store result score #$.quaternion.d.1 ca.gnr.fun run data get storage ca:ram stack[-1].elements[0][3] 1000




data remove storage ca:ram stack[-1].elements[0]
scoreboard players remove #$.quaternions_to_operate ca.gnr.fun 1




scoreboard players operation #$.tmp ca.gnr.fun = #$.quaternion.a.0 ca.gnr.fun
scoreboard players operation #$.tmp ca.gnr.fun *= #$.quaternion.a.1 ca.gnr.fun
scoreboard players operation #$.quaternion.r ca.gnr.fun += #$.tmp ca.gnr.fun

scoreboard players operation #$.tmp ca.gnr.fun = #$.quaternion.b.0 ca.gnr.fun
scoreboard players operation #$.tmp ca.gnr.fun *= #$.quaternion.b.1 ca.gnr.fun
scoreboard players operation #$.quaternion.r ca.gnr.fun -= #$.tmp ca.gnr.fun

scoreboard players operation #$.tmp ca.gnr.fun = #$.quaternion.c.0 ca.gnr.fun
scoreboard players operation #$.tmp ca.gnr.fun *= #$.quaternion.c.1 ca.gnr.fun
scoreboard players operation #$.quaternion.r ca.gnr.fun -= #$.tmp ca.gnr.fun

scoreboard players operation #$.tmp ca.gnr.fun = #$.quaternion.d.0 ca.gnr.fun
scoreboard players operation #$.tmp ca.gnr.fun *= #$.quaternion.d.1 ca.gnr.fun
scoreboard players operation #$.quaternion.r ca.gnr.fun -= #$.tmp ca.gnr.fun

scoreboard players operation #$.quaternion.r ca.gnr.fun /= #1000 ca.gnr.fun



scoreboard players operation #$.tmp ca.gnr.fun = #$.quaternion.a.0 ca.gnr.fun
scoreboard players operation #$.tmp ca.gnr.fun *= #$.quaternion.b.1 ca.gnr.fun
scoreboard players operation #$.quaternion.i ca.gnr.fun += #$.tmp ca.gnr.fun

scoreboard players operation #$.tmp ca.gnr.fun = #$.quaternion.b.0 ca.gnr.fun
scoreboard players operation #$.tmp ca.gnr.fun *= #$.quaternion.a.1 ca.gnr.fun
scoreboard players operation #$.quaternion.i ca.gnr.fun += #$.tmp ca.gnr.fun

scoreboard players operation #$.tmp ca.gnr.fun = #$.quaternion.c.0 ca.gnr.fun
scoreboard players operation #$.tmp ca.gnr.fun *= #$.quaternion.d.1 ca.gnr.fun
scoreboard players operation #$.quaternion.i ca.gnr.fun += #$.tmp ca.gnr.fun

scoreboard players operation #$.tmp ca.gnr.fun = #$.quaternion.d.0 ca.gnr.fun
scoreboard players operation #$.tmp ca.gnr.fun *= #$.quaternion.c.1 ca.gnr.fun
scoreboard players operation #$.quaternion.i ca.gnr.fun -= #$.tmp ca.gnr.fun

scoreboard players operation #$.quaternion.i ca.gnr.fun /= #1000 ca.gnr.fun



scoreboard players operation #$.tmp ca.gnr.fun = #$.quaternion.a.0 ca.gnr.fun
scoreboard players operation #$.tmp ca.gnr.fun *= #$.quaternion.c.1 ca.gnr.fun
scoreboard players operation #$.quaternion.j ca.gnr.fun += #$.tmp ca.gnr.fun

scoreboard players operation #$.tmp ca.gnr.fun = #$.quaternion.b.0 ca.gnr.fun
scoreboard players operation #$.tmp ca.gnr.fun *= #$.quaternion.d.1 ca.gnr.fun
scoreboard players operation #$.quaternion.j ca.gnr.fun -= #$.tmp ca.gnr.fun

scoreboard players operation #$.tmp ca.gnr.fun = #$.quaternion.c.0 ca.gnr.fun
scoreboard players operation #$.tmp ca.gnr.fun *= #$.quaternion.a.1 ca.gnr.fun
scoreboard players operation #$.quaternion.j ca.gnr.fun += #$.tmp ca.gnr.fun

scoreboard players operation #$.tmp ca.gnr.fun = #$.quaternion.d.0 ca.gnr.fun
scoreboard players operation #$.tmp ca.gnr.fun *= #$.quaternion.b.1 ca.gnr.fun
scoreboard players operation #$.quaternion.j ca.gnr.fun += #$.tmp ca.gnr.fun

scoreboard players operation #$.quaternion.j ca.gnr.fun /= #1000 ca.gnr.fun



scoreboard players operation #$.tmp ca.gnr.fun = #$.quaternion.a.0 ca.gnr.fun
scoreboard players operation #$.tmp ca.gnr.fun *= #$.quaternion.d.1 ca.gnr.fun
scoreboard players operation #$.quaternion.k ca.gnr.fun += #$.tmp ca.gnr.fun

scoreboard players operation #$.tmp ca.gnr.fun = #$.quaternion.b.0 ca.gnr.fun
scoreboard players operation #$.tmp ca.gnr.fun *= #$.quaternion.c.1 ca.gnr.fun
scoreboard players operation #$.quaternion.k ca.gnr.fun += #$.tmp ca.gnr.fun

scoreboard players operation #$.tmp ca.gnr.fun = #$.quaternion.c.0 ca.gnr.fun
scoreboard players operation #$.tmp ca.gnr.fun *= #$.quaternion.b.1 ca.gnr.fun
scoreboard players operation #$.quaternion.k ca.gnr.fun -= #$.tmp ca.gnr.fun

scoreboard players operation #$.tmp ca.gnr.fun = #$.quaternion.d.0 ca.gnr.fun
scoreboard players operation #$.tmp ca.gnr.fun *= #$.quaternion.a.1 ca.gnr.fun
scoreboard players operation #$.quaternion.k ca.gnr.fun += #$.tmp ca.gnr.fun

scoreboard players operation #$.quaternion.k ca.gnr.fun /= #1000 ca.gnr.fun



execute if score #$.quaternions_to_operate ca.gnr.fun matches 1.. run \
    function ca:qtn/operation/private/product_loop


