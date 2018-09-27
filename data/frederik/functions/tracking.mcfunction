scoreboard players add @e age 1
scoreboard players add @e id 0
scoreboard players add @e randomNum 0
scoreboard players add @e[type=minecraft:arrow] idOwner 0
scoreboard players add @e[type=minecraft:spectral_arrow] idOwner 0

execute as @e[scores={idOwner=0}] at @s run scoreboard players operation @s idOwner = @e[limit=1,distance=..5,sort=nearest,type=!minecraft:arrow,type=!minecraft:spectral_arrow] id

execute as @e[limit=1,scores={id=0}] run scoreboard players add #maxid id 1
scoreboard players operation @e[limit=1,scores={id=0}] id = #maxid id


execute as @e[limit=1,scores={randomNum=0}] run scoreboard players add #randommax vars 1
scoreboard players operation @e[limit=1,scores={randomNum=0}] randomNum = #randommax vars