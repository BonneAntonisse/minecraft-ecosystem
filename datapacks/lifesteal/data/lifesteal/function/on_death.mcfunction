scoreboard players operation @s lifesteal_prev_deaths = @s lifesteal_deaths
execute if score @s lifesteal_hearts matches 2.. run scoreboard players remove @s lifesteal_hearts 1
tag @s add lifesteal_needs_update