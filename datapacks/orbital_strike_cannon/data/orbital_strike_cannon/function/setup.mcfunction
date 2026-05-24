# Nuke Shot - Only works in the Overworld
execute if dimension minecraft:overworld on origin if items entity @s weapon fishing_rod[damage=60,custom_data={Orbital_Cannon:1010},custom_name={text:"Nuke Shot"}] at @s positioned ^ ^ ^10 if predicate {condition:"minecraft:location_check",predicate:{can_see_sky:1b}} positioned over world_surface positioned ~ ~16 ~ run function orbital_strike_cannon:raycast/nuke_raycast_power_1/spawn_armor_stand
execute if dimension minecraft:overworld on origin if items entity @s weapon fishing_rod[damage=60,custom_data={Orbital_Cannon:1010},custom_name={text:"Nuke Shot"}] at @s positioned ^ ^ ^10 positioned ~ ~16 ~ run function orbital_strike_cannon:raycast/nuke_raycast_power_1/spawn_armor_stand

# Stab Shot - Only works in the Overworld
execute if dimension minecraft:overworld on origin if items entity @s weapon fishing_rod[damage=60,custom_data={Orbital_Cannon:1010},custom_name={text:"Stab Shot"}] at @s positioned ^ ^ ^10 if predicate {condition:"minecraft:location_check",predicate:{can_see_sky:1b}} positioned over world_surface positioned ~ ~110 ~ run function orbital_strike_cannon:raycast/stab_raycast_power_1/spawn_armor_stand
execute if dimension minecraft:overworld on origin if items entity @s weapon fishing_rod[damage=60,custom_data={Orbital_Cannon:1010},custom_name={text:"Stab Shot"}] at @s positioned ^ ^ ^10 positioned ~ ~110 ~ run function orbital_strike_cannon:raycast/stab_raycast_power_1/spawn_armor_stand

# Law-Nuke Shot - Only works in the Overworld
execute if dimension minecraft:overworld on origin if items entity @s weapon fishing_rod[damage=60,custom_data={Orbital_Cannon:1010},custom_name={text:"Law-Nuke Shot"}] at @s positioned ^ ^ ^10 if predicate {condition:"minecraft:location_check",predicate:{can_see_sky:1b}} positioned over world_surface positioned ~ ~16 ~ run function orbital_strike_cannon:raycast/lawnuke_raycast/spawn_armor_stand
execute if dimension minecraft:overworld on origin if items entity @s weapon fishing_rod[damage=60,custom_data={Orbital_Cannon:1010},custom_name={text:"Law-Nuke Shot"}] at @s positioned ^ ^ ^10 positioned ~ ~16 ~ run function orbital_strike_cannon:raycast/lawnuke_raycast/spawn_armor_stand

# Lightning Strike - Only works in the Overworld
execute if dimension minecraft:overworld on origin if items entity @s weapon fishing_rod[damage=60,custom_data={Orbital_Cannon:1010},custom_name='{"text":"Lightning Strike","color":"yellow"}'] at @s positioned ^ ^ ^10 if predicate {condition:"minecraft:location_check",predicate:{can_see_sky:1b}} positioned over world_surface positioned ~ ~16 ~ run function orbital_strike_cannon:raycast/lightning_raycast/spawn_armor_stand
execute if dimension minecraft:overworld on origin if items entity @s weapon fishing_rod[damage=60,custom_data={Orbital_Cannon:1010},custom_name='{"text":"Lightning Strike","color":"yellow"}'] at @s positioned ^ ^ ^10 positioned ~ ~16 ~ run function orbital_strike_cannon:raycast/lightning_raycast/spawn_armor_stand

tag @s add spawned