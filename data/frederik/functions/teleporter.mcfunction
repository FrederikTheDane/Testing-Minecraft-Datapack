
#Teleport player if the location is safe (use another armor stand to test perhaps?)

#execute as @a[tag=temp] store result entity @e[type=minecraft:armor_stand,limit=1] Pose.Body[0] float 0 run data get entity @s Pos[0]

execute as @a at @s if entity @e[sort=nearest,name=Teleporter,distance=..2,limit=1,nbt={ArmorItems:[{},{},{},{id:"minecraft:wither_skeleton_skull"}],HandItems:[{id:"minecraft:ender_eye"},{}]}] if entity @e[sort=nearest,name=Teleporter,distance=2..,limit=1,nbt={ArmorItems:[{},{},{},{id:"minecraft:wither_skeleton_skull"}]}] run scoreboard players set @s teleporting 1
execute as @a[scores={teleporting=1}] at @s run data merge entity @e[sort=nearest,name=Teleporter,limit=1,distance=..2] {HandItems:[{id:"minecraft:air"},{}]}
execute as @a[scores={teleporting=1}] at @s run teleport @s @e[sort=nearest,name=Teleporter,distance=2..,limit=1,nbt={ArmorItems:[{},{},{},{id:"minecraft:wither_skeleton_skull"}]}]
scoreboard players set @a[scores={teleporting=1}] teleporting 0
