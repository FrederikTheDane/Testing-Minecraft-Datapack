execute as @e[type=minecraft:arrow,nbt={Potion:"minecraft:water",Color:11403519,inGround:1b}] at @s run execute as @e[distance=..10] run scoreboard players operation @s thanos = @s randomNum
execute as @e[scores={thanos=0..}] run scoreboard players operation @s thanos %= #2 constants
execute as @e[type=minecraft:arrow,nbt={Potion:"minecraft:water",Color:11403519,inGround:1b}] at @s run kill @e[scores={thanos=1}]
kill @e[type=minecraft:arrow,nbt={Potion:"minecraft:water",Color:11403519,inGround:1b}]
scoreboard players reset @e[scores={thanos=0..}] randomNum
scoreboard players reset @e thanos