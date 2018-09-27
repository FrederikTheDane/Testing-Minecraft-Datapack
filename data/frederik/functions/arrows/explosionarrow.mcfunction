
execute as @e[type=minecraft:arrow,nbt={Potion:"minecraft:water",Color:0,inGround:1b}] run tag @s add explosionGroundSpawning
execute as @e[type=minecraft:arrow,nbt={Potion:"minecraft:water",Color:0}] at @s if entity @e[distance=..5,type=!minecraft:player,type=!minecraft:arrow,type=!minecraft:item] run tag @s add explosionEntitySpawning

execute as @e[tag=explosionGroundSpawning] at @s run summon minecraft:tnt ~ ~ ~ {Fuse:0s}
execute as @e[tag=explosionEntitySpawning] at @s run summon minecraft:tnt ~ ~ ~ {Fuse:0s}

kill @e[tag=explosionEntitySpawning]
kill @e[tag=explosionGroundSpawning]