scoreboard players remove @s lifesteal_hearts 1
tag @s add lifesteal_needs_update
function lifesteal:update_health
give @s minecraft:heart_of_the_sea[custom_name={text:"Hart",color:"red",italic:false},lore=[{text:"Houd rechtermuisknop ingedrukt om te gebruiken!","color":"gray","italic":true}],custom_data={lifesteal_heart:1b},food={nutrition:0,saturation:0f,can_always_eat:true},consumable={consume_seconds:0.5,animation:"drink"}]
title @s actionbar {"text":"-1 Hart  |  Hart item in je inventory!","color":"red","bold":true}