
clear @s

kill @e[type=item,nbt={Item:{tag:{kill:1b}}},distance=..8]

function classic:feature/delving/lock

advancement revoke @s only classic:feature/delving/inventory
