
scoreboard players set #-1 ml.classic.dlv_abl.fun -1

scoreboard players set #$.tmp.face.steps ml.classic.dlv_abl.fun 0
function ml:classic/dvg_abl/fun/display_stack/move_cage/z/update/loop/north

scoreboard players operation #$.tmp.face.north ml.classic.dlv_abl.fun = #$.tmp.face.steps ml.classic.dlv_abl.fun


scoreboard players set #$.tmp.face.steps ml.classic.dlv_abl.fun 0
function ml:classic/dvg_abl/fun/display_stack/move_cage/z/update/loop/south

scoreboard players operation #$.tmp.face.south ml.classic.dlv_abl.fun = #$.tmp.face.steps ml.classic.dlv_abl.fun


scoreboard players set #$.tmp.face.steps ml.classic.dlv_abl.fun 0
function ml:classic/dvg_abl/fun/display_stack/move_cage/z/update/loop/west

scoreboard players operation #$.tmp.face.west ml.classic.dlv_abl.fun = #$.tmp.face.steps ml.classic.dlv_abl.fun


scoreboard players set #$.tmp.face.steps ml.classic.dlv_abl.fun 0
function ml:classic/dvg_abl/fun/display_stack/move_cage/z/update/loop/east

scoreboard players operation #$.tmp.face.east ml.classic.dlv_abl.fun = #$.tmp.face.steps ml.classic.dlv_abl.fun


scoreboard players set #$.tmp.face.steps ml.classic.dlv_abl.fun 0
function ml:classic/dvg_abl/fun/display_stack/move_cage/z/update/loop/up

scoreboard players operation #$.tmp.face.up ml.classic.dlv_abl.fun = #$.tmp.face.steps ml.classic.dlv_abl.fun


scoreboard players set #$.tmp.face.steps ml.classic.dlv_abl.fun 0
function ml:classic/dvg_abl/fun/display_stack/move_cage/z/update/loop/down

scoreboard players operation #$.tmp.face.down ml.classic.dlv_abl.fun = #$.tmp.face.steps ml.classic.dlv_abl.fun


function ml:gnr/method/get/uuid

function ml:classic/dvg_abl/method/get/instance/reference_list with storage ca: output

function ml:classic/dvg_abl/fun/display_stack/move_cage/z/update/member_1 with storage ca:dvg_abl/ reference_list


tag @s add changed.selected_face
