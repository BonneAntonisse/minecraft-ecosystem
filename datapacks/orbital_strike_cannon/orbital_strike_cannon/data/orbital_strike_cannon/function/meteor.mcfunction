execute unless dimension minecraft:overworld run return 0

# Vuurbal van boven
summon minecraft:fireball ~ ~60 ~ {power:[0.0,-3.0,0.0],ExplosionPower:5}

# TNT explosies bij inslag
summon minecraft:tnt ~ ~ ~ {Fuse:1}
summon minecraft:tnt ~3 ~ ~3 {Fuse:15}
summon minecraft:tnt ~-3 ~ ~-3 {Fuse:15}
summon minecraft:tnt ~3 ~ ~-3 {Fuse:15}
summon minecraft:tnt ~-3 ~ ~3 {Fuse:15}
summon minecraft:tnt ~5 ~ ~ {Fuse:25}
summon minecraft:tnt ~-5 ~ ~ {Fuse:25}
summon minecraft:tnt ~ ~ ~5 {Fuse:25}
summon minecraft:tnt ~ ~ ~-5 {Fuse:25}

# Vuur rondom inslag
fill ~-4 ~ ~-4 ~4 ~ ~4 minecraft:fire replace minecraft:air

# Particles
particle minecraft:flame ~ ~1 ~ 4 3 4 0.2 150 normal
particle minecraft:lava ~ ~1 ~ 3 2 3 0.1 50 normal
particle minecraft:smoke ~ ~1 ~ 4 3 4 0.1 100 normal

# Geluid
playsound minecraft:entity.generic.explode master @a ~ ~ ~ 5 0.6
playsound minecraft:item.firecharge.use master @a ~ ~ ~ 4 0.8
