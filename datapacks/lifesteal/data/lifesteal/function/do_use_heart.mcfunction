clear @s minecraft:heart_of_the_sea[custom_data~{lifesteal_heart:1b}] 1
execute if score @s lifesteal_hearts matches ..29 run scoreboard players add @s lifesteal_hearts 1
tag @s add lifesteal_needs_update
function lifesteal:update_health
effect give @s minecraft:instant_health 1 1 true
title @s actionbar {"text":"+1 Hart!","color":"red","bold":true}