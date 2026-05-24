execute unless dimension minecraft:overworld run return 0
fill ~-20 ~ ~-20 ~20 ~3 ~20 minecraft:fire replace minecraft:air
summon minecraft:lightning_bolt ~ ~ ~
summon minecraft:lightning_bolt ~8 ~ ~8
summon minecraft:lightning_bolt ~-8 ~ ~8
summon minecraft:lightning_bolt ~8 ~ ~-8
summon minecraft:lightning_bolt ~-8 ~ ~-8
summon minecraft:lightning_bolt ~16 ~ ~
summon minecraft:lightning_bolt ~-16 ~ ~
summon minecraft:lightning_bolt ~ ~ ~16
summon minecraft:lightning_bolt ~ ~ ~-16
summon minecraft:lightning_bolt ~12 ~ ~12
summon minecraft:lightning_bolt ~-12 ~ ~12
summon minecraft:lightning_bolt ~12 ~ ~-12
summon minecraft:lightning_bolt ~-12 ~ ~-12
execute as @e[distance=..30,type=!armor_stand] run data merge entity @s {Fire:100}
weather thunder 200
particle minecraft:flame ~ ~ ~ 10 5 10 0.2 300 normal
particle minecraft:lava ~ ~ ~ 6 3 6 0.1 100 normal
particle minecraft:large_smoke ~ ~ ~ 10 5 10 0.1 150 normal
playsound minecraft:entity.generic.explode master @a ~ ~ ~ 10 0.5
playsound minecraft:entity.lightning_bolt.thunder master @a ~ ~ ~ 10 0.6
playsound minecraft:entity.wither.death master @a ~ ~ ~ 5 0.7
schedule function orbital_strike_cannon:doomsday_end 5s