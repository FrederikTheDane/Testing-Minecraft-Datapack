execute as @e[tag=!spedup,type=minecraft:arrow,nbt={Potion:"minecraft:water",Color:16711680}] run data merge entity @s {NoGravity:1b}
execute as @e[tag=!spedup,type=minecraft:arrow,nbt={Potion:"minecraft:water",Color:16711680,inGround:0b}] store result entity @s Motion[0] double 0.001 run data get entity @s Motion[0] 2000
execute as @e[tag=!spedup,type=minecraft:arrow,nbt={Potion:"minecraft:water",Color:16711680,inGround:0b}] store result entity @s Motion[1] double 0.001 run data get entity @s Motion[1] 2000
execute as @e[tag=!spedup,type=minecraft:arrow,nbt={Potion:"minecraft:water",Color:16711680,inGround:0b}] store result entity @s Motion[2] double 0.001 run data get entity @s Motion[2] 2000
tag @e[type=minecraft:arrow,nbt={Potion:"minecraft:water",Color:16711680},tag=!spedup] add spedup
