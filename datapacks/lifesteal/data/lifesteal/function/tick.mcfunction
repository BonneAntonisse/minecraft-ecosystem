execute as @a[tag=!lifesteal_init] run function lifesteal:init_player
execute as @a if score @s lifesteal_kills > @s lifesteal_prev_kills run function lifesteal:on_kill
execute as @a if score @s lifesteal_deaths > @s lifesteal_prev_deaths run function lifesteal:on_death
execute as @a if score @s lifesteal_used_hearts > @s lifesteal_prev_used_hearts run function lifesteal:on_use_heart
execute as @a[scores={lifesteal_hearts=..5}] if score @s lifesteal_mob_kills > @s lifesteal_prev_mob_kills run function lifesteal:on_mob_kill
execute as @a[tag=lifesteal_needs_update] run function lifesteal:update_health
execute as @a run scoreboard players operation @s lifesteal_prev_kills = @s lifesteal_kills
execute as @a run scoreboard players operation @s lifesteal_prev_mob_kills = @s lifesteal_mob_kills
execute as @a run scoreboard players operation @s lifesteal_prev_deaths = @s lifesteal_deaths
execute as @a run scoreboard players operation @s lifesteal_prev_used_hearts = @s lifesteal_used_hearts
execute as @a run scoreboard players enable @s withdraw
execute as @a[scores={withdraw=1..}] run function lifesteal:handle_withdraw