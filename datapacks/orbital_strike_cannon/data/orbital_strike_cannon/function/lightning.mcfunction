execute unless dimension minecraft:overworld run return 0

# Centrale blikseminslag
summon minecraft:lightning_bolt ~ ~ ~

# Bliksem rondom het inslagpunt
summon minecraft:lightning_bolt ~4 ~ ~
summon minecraft:lightning_bolt ~-4 ~ ~
summon minecraft:lightning_bolt ~ ~ ~4
summon minecraft:lightning_bolt ~ ~ ~-4
summon minecraft:lightning_bolt ~3 ~ ~3
summon minecraft:lightning_bolt ~-3 ~ ~3
summon minecraft:lightning_bolt ~3 ~ ~-3
summon minecraft:lightning_bolt ~-3 ~ ~-3
summon minecraft:lightning_bolt ~6 ~ ~
summon minecraft:lightning_bolt ~-6 ~ ~
summon minecraft:lightning_bolt ~ ~ ~6
summon minecraft:lightning_bolt ~ ~ ~-6

# Particles
particle minecraft:electric_spark ~ ~1 ~ 5 3 5 0.1 150 normal

# Geluid
playsound minecraft:entity.lightning_bolt.thunder master @a ~ ~ ~ 5 0.8
playsound minecraft:entity.lightning_bolt.impact master @a ~ ~ ~ 3 1
