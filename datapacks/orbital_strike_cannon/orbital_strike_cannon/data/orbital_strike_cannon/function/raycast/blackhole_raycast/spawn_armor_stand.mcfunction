execute as @s at @s anchored eyes run function orbital_strike_cannon:raycast/blackhole_raycast/find_block
execute positioned ~ ~-16 ~ run kill @n[type=fishing_bobber,tag=!spawned,distance=..128]
item replace entity @s weapon with air
execute at @s run playsound minecraft:entity.enderman.teleport master @a ~ ~ ~ 3 1
execute at @s run particle minecraft:portal ^ ^1.5 ^0.5 0.3 0.5 0.3 0.05 20 normal