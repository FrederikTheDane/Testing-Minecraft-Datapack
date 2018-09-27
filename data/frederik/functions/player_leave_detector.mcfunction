scoreboard players add @e[type=minecraft:armor_stand,name=Player] posAge 1
execute as @a at @s run summon minecraft:armor_stand ~ ~ ~ {CustomName:"{\"text\":\"Player\"}",NoGravity:1b,Marker:1b,Invisible:1b}
kill @e[type=minecraft:armor_stand,name=Player,scores={posAge=1..}]