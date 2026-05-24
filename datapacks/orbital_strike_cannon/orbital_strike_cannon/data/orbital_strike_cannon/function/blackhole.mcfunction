execute unless dimension minecraft:overworld run return 0
summon minecraft:armor_stand ~ ~ ~ {Invisible:1b,NoGravity:1b,Marker:1b,Tags:["black_hole"]}
scoreboard players set @e[tag=black_hole,distance=..1,sort=nearest,limit=1] orbital_bh_timer 100
particle minecraft:portal ~ ~ ~ 5 5 5 0.02 300 normal
particle minecraft:dragon_breath ~ ~ ~ 3 3 3 0.02 100 normal
playsound minecraft:entity.enderman.ambient master @a ~ ~ ~ 5 0.3
playsound minecraft:entity.wither.ambient master @a ~ ~ ~ 5 0.5