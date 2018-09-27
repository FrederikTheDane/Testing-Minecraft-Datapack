
#execute as @e[type=minecraft:item] at @s store result entity @s Pos[0] double 0.0001 if entity @e[type=minecraft:arrow,nbt={Potion:"minecraft:water",Color:12763842,inGround:0b},limit=1,distance=..3] run data get entity @e[type=minecraft:arrow,nbt={Potion:"minecraft:water",Color:12763842,inGround:0b},limit=1,distance=..3] Pos[0] 10000
#execute as @e[type=minecraft:item] at @s store result entity @s Pos[1] double 0.0001 if entity @e[type=minecraft:arrow,nbt={Potion:"minecraft:water",Color:12763842,inGround:0b},limit=1,distance=..3] run data get entity @e[type=minecraft:arrow,nbt={Potion:"minecraft:water",Color:12763842,inGround:0b},limit=1,distance=..3] Pos[1] 10000
#execute as @e[type=minecraft:item] at @s store result entity @s Pos[2] double 0.0001 if entity @e[type=minecraft:arrow,nbt={Potion:"minecraft:water",Color:12763842,inGround:0b},limit=1,distance=..3] run data get entity @e[type=minecraft:arrow,nbt={Potion:"minecraft:water",Color:12763842,inGround:0b},limit=1,distance=..3] Pos[2] 10000

#TODO: Make items non pickupable if they're following an arrow

execute as @e[tag=!magnet,type=minecraft:arrow,nbt={Potion:"minecraft:water",Color:12763842}] run tag @s add magnet
execute as @e[tag=magnet,nbt={inGround:0b}] at @s run execute as @e[type=minecraft:item,distance=..3] store result entity @s Pos[0] double 0.0001 run data get entity @e[tag=magnet,limit=1,sort=nearest] Pos[0] 10000
execute as @e[tag=magnet,nbt={inGround:0b}] at @s run execute as @e[type=minecraft:item,distance=..3] store result entity @s Pos[1] double 0.0001 run data get entity @e[tag=magnet,limit=1,sort=nearest] Pos[1] 10000
execute as @e[tag=magnet,nbt={inGround:0b}] at @s run execute as @e[type=minecraft:item,distance=..3] store result entity @s Pos[2] double 0.0001 run data get entity @e[tag=magnet,limit=1,sort=nearest] Pos[2] 10000
