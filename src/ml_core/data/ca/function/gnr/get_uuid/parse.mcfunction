
# ====================================================================================

function ca:gnr_lay/new/int

data modify storage ca:ram stack[-1] merge value {tmp_hex:"",hex_0:"",hex_1:"",hex_2:"",hex_3:"",hex_4:"",hex_5:"",hex_6:"",hex_7:""}

# ====================================================================================

scoreboard players operation #$.uuid.0 ml.fun.gnr = @s ml.gnr.uuid_cache.0
scoreboard players operation #$.uuid.1 ml.fun.gnr = @s ml.gnr.uuid_cache.1
scoreboard players operation #$.uuid.2 ml.fun.gnr = @s ml.gnr.uuid_cache.2
scoreboard players operation #$.uuid.3 ml.fun.gnr = @s ml.gnr.uuid_cache.3

# ====================================================================================

scoreboard players operation #$.tmp.int ml.fun.gnr = #$.uuid.3 ml.fun.gnr

    scoreboard players operation #$.tmp.fraction ml.fun.gnr = #$.tmp.int ml.fun.gnr
    scoreboard players operation #$.tmp.fraction ml.fun.gnr %= #65536 ml.fun.gnr

    execute store result storage ca:ram stack[-1].value.x int 1 run scoreboard players get #$.tmp.fraction ml.fun.gnr
    function ca:gnr/get_uuid/get_hex_component with storage ca:ram stack[-1].value

    data modify storage ca:ram stack[-1].hex_7 set from storage ca:ram stack[-1].tmp_hex


scoreboard players operation #$.tmp.int ml.fun.gnr /= #65536 ml.fun.gnr

    scoreboard players operation #$.tmp.fraction ml.fun.gnr = #$.tmp.int ml.fun.gnr
    scoreboard players operation #$.tmp.fraction ml.fun.gnr %= #65536 ml.fun.gnr

    execute store result storage ca:ram stack[-1].value.x int 1 run scoreboard players get #$.tmp.fraction ml.fun.gnr
    function ca:gnr/get_uuid/get_hex_component with storage ca:ram stack[-1].value

    data modify storage ca:ram stack[-1].hex_6 set from storage ca:ram stack[-1].tmp_hex


scoreboard players operation #$.tmp.int ml.fun.gnr = #$.uuid.2 ml.fun.gnr

    scoreboard players operation #$.tmp.fraction ml.fun.gnr = #$.tmp.int ml.fun.gnr
    scoreboard players operation #$.tmp.fraction ml.fun.gnr %= #65536 ml.fun.gnr

    execute store result storage ca:ram stack[-1].value.x int 1 run scoreboard players get #$.tmp.fraction ml.fun.gnr
    function ca:gnr/get_uuid/get_hex_component with storage ca:ram stack[-1].value

    data modify storage ca:ram stack[-1].hex_5 set from storage ca:ram stack[-1].tmp_hex


scoreboard players operation #$.tmp.int ml.fun.gnr /= #65536 ml.fun.gnr

    scoreboard players operation #$.tmp.fraction ml.fun.gnr = #$.tmp.int ml.fun.gnr
    scoreboard players operation #$.tmp.fraction ml.fun.gnr %= #65536 ml.fun.gnr

    execute store result storage ca:ram stack[-1].value.x int 1 run scoreboard players get #$.tmp.fraction ml.fun.gnr
    function ca:gnr/get_uuid/get_hex_component with storage ca:ram stack[-1].value

    data modify storage ca:ram stack[-1].hex_4 set from storage ca:ram stack[-1].tmp_hex


scoreboard players operation #$.tmp.int ml.fun.gnr = #$.uuid.1 ml.fun.gnr

    scoreboard players operation #$.tmp.fraction ml.fun.gnr = #$.tmp.int ml.fun.gnr
    scoreboard players operation #$.tmp.fraction ml.fun.gnr %= #65536 ml.fun.gnr

    execute store result storage ca:ram stack[-1].value.x int 1 run scoreboard players get #$.tmp.fraction ml.fun.gnr
    function ca:gnr/get_uuid/get_hex_component with storage ca:ram stack[-1].value

    data modify storage ca:ram stack[-1].hex_3 set from storage ca:ram stack[-1].tmp_hex


scoreboard players operation #$.tmp.int ml.fun.gnr /= #65536 ml.fun.gnr

    scoreboard players operation #$.tmp.fraction ml.fun.gnr = #$.tmp.int ml.fun.gnr
    scoreboard players operation #$.tmp.fraction ml.fun.gnr %= #65536 ml.fun.gnr

    execute store result storage ca:ram stack[-1].value.x int 1 run scoreboard players get #$.tmp.fraction ml.fun.gnr
    function ca:gnr/get_uuid/get_hex_component with storage ca:ram stack[-1].value

    data modify storage ca:ram stack[-1].hex_2 set from storage ca:ram stack[-1].tmp_hex


scoreboard players operation #$.tmp.int ml.fun.gnr = #$.uuid.0 ml.fun.gnr

    scoreboard players operation #$.tmp.fraction ml.fun.gnr = #$.tmp.int ml.fun.gnr
    scoreboard players operation #$.tmp.fraction ml.fun.gnr %= #65536 ml.fun.gnr

    execute store result storage ca:ram stack[-1].value.x int 1 run scoreboard players get #$.tmp.fraction ml.fun.gnr
    function ca:gnr/get_uuid/get_hex_component with storage ca:ram stack[-1].value

    data modify storage ca:ram stack[-1].hex_1 set from storage ca:ram stack[-1].tmp_hex


scoreboard players operation #$.tmp.int ml.fun.gnr /= #65536 ml.fun.gnr

    scoreboard players operation #$.tmp.fraction ml.fun.gnr = #$.tmp.int ml.fun.gnr
    scoreboard players operation #$.tmp.fraction ml.fun.gnr %= #65536 ml.fun.gnr

    execute store result storage ca:ram stack[-1].value.x int 1 run scoreboard players get #$.tmp.fraction ml.fun.gnr
    function ca:gnr/get_uuid/get_hex_component with storage ca:ram stack[-1].value

    data modify storage ca:ram stack[-1].hex_0 set from storage ca:ram stack[-1].tmp_hex

# ====================================================================================

function ca:gnr/get_uuid/concat_uuid with storage ca:ram stack[-1]
    data modify storage ca:ram protected_stack[-1][-1] merge from storage ca:ram stack[-1]

function ca:gnr_lay/delete/ext

# ====================================================================================
