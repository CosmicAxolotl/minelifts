

function ca:gnr_lay/new/int

function ca:ml/arc_glm/tasks/annoyance

scoreboard players add @s ca.ml.arc_glm.time_existing 1

particle minecraft:entity_effect{color:[0.00784313725, 0.9294117647, 0.22352941176, 1]} ~ ~-0.2 ~ 0.01 0.01 0.01 2 3 normal @a

execute unless predicate {                  \
        condition: "entity_properties",     \
        entity: "this",                     \
        predicate: {                        \
            periodic_tick: 2                \
        }                                   \
    } run return run function ca:gnr_lay/delete/int


scoreboard players operation #$.time_existing ca.ml.arc_glm.fun = @s ca.ml.arc_glm.time_existing

data modify storage ca:ram stack[-1].gimbal set value [ 0.0f , 0.0f , 0.0f ]

execute store result storage ca:ram stack[-1].gimbal[0] float 5.454 run scoreboard players get #$.time_existing ca.ml.arc_glm.fun
execute store result storage ca:ram stack[-1].gimbal[1] float -3.958 run scoreboard players get #$.time_existing ca.ml.arc_glm.fun
execute store result storage ca:ram stack[-1].gimbal[2] float 12.456 run scoreboard players get #$.time_existing ca.ml.arc_glm.fun

function ca:qtn/gimbal/convert

data modify storage ca:ram stack[-1].quaternions append from storage ca:ram stack[-1].result
data modify storage ca:ram stack[-1].quaternions append value [ 0.0f, -0.5f, -0.5f, -0.5f ]
data modify storage ca:ram stack[-1].quaternions append from storage ca:ram stack[-1].result

execute store result storage ca:ram stack[-1].input float 8 run scoreboard players get #$.time_existing ca.ml.arc_glm.fun

function ca:gnr/trig/sin

execute store result score #$.sine_input ca.ml.arc_glm.fun run data get storage ca:ram stack[-1].output 200
scoreboard players add #$.sine_input ca.ml.arc_glm.fun 1000

execute store result storage ca:ram stack[-1].quaternions[1][1] float -0.0005 run \
    scoreboard players get #$.sine_input ca.ml.arc_glm.fun
data modify storage ca:ram stack[-1].quaternions[1][2] set from storage ca:ram stack[-1].quaternions[1][1]
data modify storage ca:ram stack[-1].quaternions[1][2] set from storage ca:ram stack[-1].quaternions[1][1]

## calculate conjugate of rotation quaternion, nerd stuff basically
execute store result storage ca:ram stack[-1].quaternions[2][1] float 0.001 run \
    data get storage ca:ram stack[-1].quaternions[2][1] -1000
execute store result storage ca:ram stack[-1].quaternions[2][2] float 0.001 run \
    data get storage ca:ram stack[-1].quaternions[2][2] -1000
execute store result storage ca:ram stack[-1].quaternions[2][3] float 0.001 run \
    data get storage ca:ram stack[-1].quaternions[2][3] -1000

data modify storage ca:ram stack[-1].transformation set value {left_rotation:[],translation:[],scale:[0f,0f,0f]}

data modify storage ca:ram stack[-1].transformation.left_rotation set from storage ca:ram stack[-1].result

function ca:qtn/operation/product

data modify storage ca:ram stack[-1].transformation.translation set from storage ca:ram stack[-1].result
data remove storage ca:ram stack[-1].transformation.translation[0]

data modify storage ca:ram stack[-1].transformation.left_rotation append from storage ca:ram stack[-1].transformation.left_rotation[0]
data remove storage ca:ram stack[-1].transformation.left_rotation[0]

execute store result storage ca:ram stack[-1].transformation.scale[0] float 0.001 run \
    scoreboard players get #$.sine_input ca.ml.arc_glm.fun
data modify storage ca:ram stack[-1].transformation.scale[1] set from storage ca:ram stack[-1].transformation.scale[0]
data modify storage ca:ram stack[-1].transformation.scale[2] set from storage ca:ram stack[-1].transformation.scale[0]

execute on passengers run data modify entity @s[tag=outer_core] transformation merge from storage ca:ram stack[-1].transformation






execute store result storage ca:ram stack[-1].gimbal[0] float 2.354 run scoreboard players get #$.time_existing ca.ml.arc_glm.fun
execute store result storage ca:ram stack[-1].gimbal[1] float 4.5937 run scoreboard players get #$.time_existing ca.ml.arc_glm.fun
execute store result storage ca:ram stack[-1].gimbal[2] float -7.565 run scoreboard players get #$.time_existing ca.ml.arc_glm.fun

function ca:qtn/gimbal/convert

data modify storage ca:ram stack[-1].quaternions set value []

data modify storage ca:ram stack[-1].quaternions append from storage ca:ram stack[-1].result
data modify storage ca:ram stack[-1].quaternions append value [ 0.0f, -0.4f, -0.4f, -0.4f ]
data modify storage ca:ram stack[-1].quaternions append from storage ca:ram stack[-1].result

scoreboard players add #$.time_existing ca.ml.arc_glm.fun 6
execute store result storage ca:ram stack[-1].input float 8 run scoreboard players get #$.time_existing ca.ml.arc_glm.fun

function ca:gnr/trig/sin

execute store result score #$.sine_input ca.ml.arc_glm.fun run data get storage ca:ram stack[-1].output 150
scoreboard players add #$.sine_input ca.ml.arc_glm.fun 1000

execute store result storage ca:ram stack[-1].quaternions[1][1] float -0.0004 run \
    scoreboard players get #$.sine_input ca.ml.arc_glm.fun
data modify storage ca:ram stack[-1].quaternions[1][2] set from storage ca:ram stack[-1].quaternions[1][1]
data modify storage ca:ram stack[-1].quaternions[1][2] set from storage ca:ram stack[-1].quaternions[1][1]

## calculate conjugate of rotation quaternion, nerd stuff basically
execute store result storage ca:ram stack[-1].quaternions[2][1] float 0.001 run \
    data get storage ca:ram stack[-1].quaternions[2][1] -1000
execute store result storage ca:ram stack[-1].quaternions[2][2] float 0.001 run \
    data get storage ca:ram stack[-1].quaternions[2][2] -1000
execute store result storage ca:ram stack[-1].quaternions[2][3] float 0.001 run \
    data get storage ca:ram stack[-1].quaternions[2][3] -1000
    


data modify storage ca:ram stack[-1].transformation set value {left_rotation:[],translation:[],scale:[0f,0f,0f]}

data modify storage ca:ram stack[-1].transformation.left_rotation set from storage ca:ram stack[-1].result

function ca:qtn/operation/product

data modify storage ca:ram stack[-1].transformation.translation set from storage ca:ram stack[-1].result
data remove storage ca:ram stack[-1].transformation.translation[0]

data modify storage ca:ram stack[-1].transformation.left_rotation append from storage ca:ram stack[-1].transformation.left_rotation[0]
data remove storage ca:ram stack[-1].transformation.left_rotation[0]

execute store result storage ca:ram stack[-1].transformation.scale[0] float 0.0008 run \
    scoreboard players get #$.sine_input ca.ml.arc_glm.fun
data modify storage ca:ram stack[-1].transformation.scale[1] set from storage ca:ram stack[-1].transformation.scale[0]
data modify storage ca:ram stack[-1].transformation.scale[2] set from storage ca:ram stack[-1].transformation.scale[0]

execute on passengers run data modify entity @s[tag=inner_core] transformation merge from storage ca:ram stack[-1].transformation







execute store result storage ca:ram stack[-1].gimbal[0] float -3.565 run scoreboard players get #$.time_existing ca.ml.arc_glm.fun
execute store result storage ca:ram stack[-1].gimbal[1] float -2.7854 run scoreboard players get #$.time_existing ca.ml.arc_glm.fun
execute store result storage ca:ram stack[-1].gimbal[2] float 12.443 run scoreboard players get #$.time_existing ca.ml.arc_glm.fun

function ca:qtn/gimbal/convert

data modify storage ca:ram stack[-1].quaternions set value []

data modify storage ca:ram stack[-1].quaternions append from storage ca:ram stack[-1].result
data modify storage ca:ram stack[-1].quaternions append value [ 0.0f, -0.3f, -0.3f, -0.3f ]
data modify storage ca:ram stack[-1].quaternions append from storage ca:ram stack[-1].result


scoreboard players add #$.time_existing ca.ml.arc_glm.fun 6

execute store result storage ca:ram stack[-1].input float 8 run scoreboard players get #$.time_existing ca.ml.arc_glm.fun

function ca:gnr/trig/sin

execute store result score #$.sine_input ca.ml.arc_glm.fun run data get storage ca:ram stack[-1].output 100
scoreboard players add #$.sine_input ca.ml.arc_glm.fun 1000

execute store result storage ca:ram stack[-1].quaternions[1][1] float -0.0003 run \
    scoreboard players get #$.sine_input ca.ml.arc_glm.fun
data modify storage ca:ram stack[-1].quaternions[1][2] set from storage ca:ram stack[-1].quaternions[1][1]
data modify storage ca:ram stack[-1].quaternions[1][2] set from storage ca:ram stack[-1].quaternions[1][1]

## calculate conjugate of rotation quaternion, nerd stuff basically
execute store result storage ca:ram stack[-1].quaternions[2][1] float 0.001 run \
    data get storage ca:ram stack[-1].quaternions[2][1] -1000
execute store result storage ca:ram stack[-1].quaternions[2][2] float 0.001 run \
    data get storage ca:ram stack[-1].quaternions[2][2] -1000
execute store result storage ca:ram stack[-1].quaternions[2][3] float 0.001 run \
    data get storage ca:ram stack[-1].quaternions[2][3] -1000

data modify storage ca:ram stack[-1].transformation set value {left_rotation:[],translation:[],scale:[0f,0f,0f]}

data modify storage ca:ram stack[-1].transformation.left_rotation set from storage ca:ram stack[-1].result

function ca:qtn/operation/product

data modify storage ca:ram stack[-1].transformation.translation set from storage ca:ram stack[-1].result
data remove storage ca:ram stack[-1].transformation.translation[0]

data modify storage ca:ram stack[-1].transformation.left_rotation append from storage ca:ram stack[-1].transformation.left_rotation[0]
data remove storage ca:ram stack[-1].transformation.left_rotation[0]

execute store result storage ca:ram stack[-1].transformation.scale[0] float 0.0006 run \
    scoreboard players get #$.sine_input ca.ml.arc_glm.fun
data modify storage ca:ram stack[-1].transformation.scale[1] set from storage ca:ram stack[-1].transformation.scale[0]
data modify storage ca:ram stack[-1].transformation.scale[2] set from storage ca:ram stack[-1].transformation.scale[0]


execute on passengers run data modify entity @s[tag=heart] transformation merge from storage ca:ram stack[-1].transformation


function ca:gnr_lay/delete/int


