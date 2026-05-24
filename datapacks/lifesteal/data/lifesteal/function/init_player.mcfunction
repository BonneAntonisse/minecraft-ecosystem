tag @s add lifesteal_init
scoreboard players set @s lifesteal_hearts 10
scoreboard players set @s lifesteal_withdraw_remaining 0
scoreboard players operation @s lifesteal_prev_kills = @s lifesteal_kills
scoreboard players operation @s lifesteal_prev_mob_kills = @s lifesteal_mob_kills
scoreboard players operation @s lifesteal_prev_deaths = @s lifesteal_deaths
scoreboard players operation @s lifesteal_prev_used_hearts = @s lifesteal_used_hearts
function lifesteal:update_health
title @s actionbar {"text":"Lifesteal actief - 10 harten","color":"red","bold":true}