execute as @s at @s anchored eyes run function orbital_strike_cannon:raycast/meteor_raycast/find_block
execute positioned ~ ~-16 ~ run kill @n[type=fishing_bobber,tag=!spawned,distance=..128]
item replace entity @s weapon with air
execute at @s run playsound minecraft:item.firecharge.use master @a ~ ~ ~
execute at @s run particle minecraft:flame ^ ^1.5 ^0.5 0.3 0.5 0.3 0.1 30 normal
