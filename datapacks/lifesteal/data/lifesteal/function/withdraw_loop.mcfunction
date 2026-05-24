give @s minecraft:heart_of_the_sea[custom_name={text:"Hart",color:"red",italic:false},lore=[{text:"Houd rechtermuisknop ingedrukt om te gebruiken!","color":"gray","italic":true}],custom_data={lifesteal_heart:1b},food={nutrition:0,saturation:0f,can_always_eat:true},consumable={consume_seconds:0.5,animation:"drink"}] 1
scoreboard players remove @s lifesteal_hearts 1
scoreboard players remove @s lifesteal_withdraw_remaining 1
execute if score @s lifesteal_withdraw_remaining matches 1.. if score @s lifesteal_hearts matches 2.. run function lifesteal:withdraw_loop