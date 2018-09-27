
#Lightning enchant? harming arrow perhaps?

tag @e[type=minecraft:arrow,nbt={Fire:-1s}] add notOnFire
execute as @e[type=minecraft:arrow,tag=!notOnFire,nbt={inGround:1b}] at @s run setblock ~ ~ ~ minecraft:fire keep
kill @e[type=minecraft:arrow,tag=!notOnFire,nbt={inGround:1b}]