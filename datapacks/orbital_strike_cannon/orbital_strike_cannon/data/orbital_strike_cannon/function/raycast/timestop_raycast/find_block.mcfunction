execute if block ^ ^ ^0.5 air run function orbital_strike_cannon:raycast/timestop_raycast/find_block_step
execute unless block ^ ^ ^0.5 air run summon minecraft:marker ^ ^ ^0.5 {NoGravity:1b,Invisible:0b,Marker:0b,Tags:["timestop1"]}
execute unless block ^ ^ ^0.5 air run function orbital_strike_cannon:raycast/timestop_raycast/run_timestop