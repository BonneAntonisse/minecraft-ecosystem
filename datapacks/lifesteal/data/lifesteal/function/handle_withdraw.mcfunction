scoreboard players operation @s lifesteal_withdraw_remaining = @s withdraw
scoreboard players set @s withdraw 0
execute if score @s lifesteal_withdraw_remaining >= @s lifesteal_hearts run scoreboard players operation @s lifesteal_withdraw_remaining = @s lifesteal_hearts
execute if score @s lifesteal_withdraw_remaining >= @s lifesteal_hearts run scoreboard players remove @s lifesteal_withdraw_remaining 1
execute if score @s lifesteal_withdraw_remaining matches 1.. run function lifesteal:withdraw_loop
execute unless score @s lifesteal_withdraw_remaining matches 1.. run title @s actionbar {"text":"Niet genoeg harten!","color":"red","bold":true}
function lifesteal:update_health