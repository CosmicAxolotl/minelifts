

execute store result score #$.tmp.input ca.gnr.fun run \
    data get storage ca:ram stack[-1].input 10

scoreboard players operation \
                                    #$.tmp.output ca.gnr.fun = #$.tmp.input ca.gnr.fun
scoreboard players \
                                    remove #$.tmp.output ca.gnr.fun 1800
scoreboard players operation \
                                    #$.tmp.output ca.gnr.fun %= #1800 ca.gnr.fun
scoreboard players \
                                    remove #$.tmp.output ca.gnr.fun 900
scoreboard players operation \
                                    #$.tmp.output ca.gnr.fun *= #$.tmp.output ca.gnr.fun
scoreboard players operation \
                                    #$.math_trigonometry.0 ca.gnr.fun = #$.tmp.output ca.gnr.fun
scoreboard players \
                                    add #$.math_trigonometry.0 ca.gnr.fun 3240000
scoreboard players operation \
                                    #$.math_trigonometry.0 ca.gnr.fun /= #1000 ca.gnr.fun
scoreboard players operation \
                                    #$.tmp.output ca.gnr.fun *= #4 ca.gnr.fun
scoreboard players operation \
                                    #$.tmp.output ca.gnr.fun *= #-1 ca.gnr.fun
scoreboard players \
                                    add #$.tmp.output ca.gnr.fun 3240000
scoreboard players operation \
                                    #$.tmp.output ca.gnr.fun /= #$.math_trigonometry.0 ca.gnr.fun
scoreboard players operation \
                                    #$.math_trigonometry.0 ca.gnr.fun = #$.tmp.input ca.gnr.fun
scoreboard players operation \
                                    #$.math_trigonometry.0 ca.gnr.fun %= #3600 ca.gnr.fun


execute if score #$.math_trigonometry.0 ca.gnr.fun matches 1800.. run \
    scoreboard players operation #$.tmp.output ca.gnr.fun *= #-1 ca.gnr.fun

execute store result storage ca:ram stack[-1].output double 0.001 run \
    scoreboard players get #$.tmp.output ca.gnr.fun

