execute as @e[tag=!experienceAdded,type=item,nbt={Item:{id:"minecraft:potion",tag:{Potion:"minecraft:mundane"}}}] at @s if block ~ ~ ~ minecraft:enchanting_table if entity @p[distance=..2,level=1..] run tag @s add experienceAdding
execute as @e[tag=experienceAdding] at @s run data merge entity @s {Item:{tag:{CustomPotionEffects:[{Id:26b,Duration:0}],display:{Name:"{\"text\":\"Potion of Experience\",\"italic\":false}"},CustomPotionColor:6094684}}}
execute as @e[tag=experienceAdding] at @s store result entity @s Item.tag.CustomPotionEffects[0].Duration int 1 run experience query @p levels
execute as @e[tag=experienceAdding] at @s run experience set @p 0 levels
tag @e[tag=experienceAdding] add experienceAdded
tag @e[tag=experienceAdded] remove experienceAdding


