scoreboard players operation @s lifesteal_prev_mob_kills = @s lifesteal_mob_kills
scoreboard players add @s lifesteal_hearts 1
tag @s add lifesteal_needs_update
function lifesteal:update_health
effect give @s minecraft:instant_health 1 0 true
title @s actionbar {"text":"+1 Hart van mob kill!","color":"green","bold":true}