scoreboard players remove @s orbital_bh_timer 1
execute as @e[type=!armor_stand,distance=..15] at @s facing entity @e[tag=black_hole,limit=1,sort=nearest] positioned ^ ^ ^0.5 run tp @s ~ ~ ~
particle minecraft:portal ~ ~ ~ 3 3 3 0.05 80 normal
particle minecraft:smoke ~ ~ ~ 1 1 1 0.05 20 normal
execute if score @s orbital_bh_timer matches ..0 run kill @s