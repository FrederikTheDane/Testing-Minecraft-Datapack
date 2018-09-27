execute as @e[type=minecraft:snowball] at @s unless block ~ ~-1 ~ minecraft:air run tag @s add ON_GROUND
execute as @e[tag=ON_GROUND] at @s run setblock ~ ~ ~ minecraft:snow keep