
#Lightning enchant? harming arrow perhaps?

tag @e[type=minecraft:arrow,nbt=!{Fire:-1s}] add onFire

execute as @e[type=minecraft:arrow,tag=onFire,tag=!fireCreated,nbt={inGround:1b}] at @s run setblock ~ ~ ~ minecraft:fire keep
execute as @e[type=minecraft:arrow,tag=onFire,tag=!fireCreated,nbt={inGround:1b}] run tag @s add fireCreated
execute as @e[type=minecraft:arrow,tag=onFire,tag=fireCreated,nbt={inGround:0b}] run tag @s remove fireCreated