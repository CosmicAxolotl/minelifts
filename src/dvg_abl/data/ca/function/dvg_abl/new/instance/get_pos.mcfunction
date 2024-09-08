
# =========================================================================================================================

function ca:gnr_lay/new/int

data modify storage ca:ram stack[-1].pos set from entity @s Pos
    execute store result score @a[tag=tmp,limit=1] ca.dvg_abl.tail.rdc.x run data get storage ca:ram stack[-1].pos[0]
    execute store result score @a[tag=tmp,limit=1] ca.dvg_abl.tail.rdc.y run data get storage ca:ram stack[-1].pos[1]
    execute store result score @a[tag=tmp,limit=1] ca.dvg_abl.tail.rdc.z run data get storage ca:ram stack[-1].pos[2]

function ca:gnr_lay/delete/int

return 1

# =========================================================================================================================
