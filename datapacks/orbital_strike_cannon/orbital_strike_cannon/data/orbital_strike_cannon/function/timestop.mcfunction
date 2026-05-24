execute unless dimension minecraft:overworld run return 0
effect give @e[distance=..20] minecraft:slowness 5 255 true
effect give @e[distance=..20] minecraft:mining_fatigue 5 255 true
effect give @e[distance=..20] minecraft:weakness 5 255 true
data merge entity @e[distance=..20] {TicksFrozen:300}
particle minecraft:snowflake ~ ~ ~ 5 5 5 0.1 300 normal
particle minecraft:instant_effect ~ ~ ~ 4 4 4 0.05 150 normal
particle minecraft:white_ash ~ ~ ~ 3 3 3 0.05 100 normal
playsound minecraft:block.beacon.activate master @a ~ ~ ~ 5 0.5
playsound minecraft:entity.elder_guardian.curse master @a ~ ~ ~ 3 0.8