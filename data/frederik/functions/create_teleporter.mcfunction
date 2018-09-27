execute as @e[type=minecraft:armor_stand] at @s if block ~1 ~0.5 ~ minecraft:light_weighted_pressure_plate if block ~-1 ~0.5 ~ minecraft:light_weighted_pressure_plate if block ~ ~0.5 ~1 minecraft:light_weighted_pressure_plate if block ~ ~0.5 ~-1 minecraft:light_weighted_pressure_plate run data merge entity @s {CustomName:"{\"text\":\"Teleporter\"}",CustomNameVisible:1b,ShowArms:1b}

