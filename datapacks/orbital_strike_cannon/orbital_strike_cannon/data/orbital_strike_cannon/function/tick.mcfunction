execute as @e[type=fishing_bobber,tag=!spawned] run function orbital_strike_cannon:setup
execute as @a[scores={orbital_deaths=1..}] run function orbital_strike_cannon:on_respawn
execute as @e[tag=black_hole] at @s run function orbital_strike_cannon:blackhole_tick