# Wapens
function orbital_strike_cannon:get_stab
function orbital_strike_cannon:get_nuke
function orbital_strike_cannon:get_lawnuke
function orbital_strike_cannon:get_lightning
function orbital_strike_cannon:get_meteor
function orbital_strike_cannon:get_timestop
function orbital_strike_cannon:get_doomsday

# Armor (direct in armor slots)
item replace entity @s armor.head with minecraft:netherite_helmet[enchantments={"minecraft:protection":255,"minecraft:unbreaking":255},unbreakable={}]
item replace entity @s armor.chest with minecraft:netherite_chestplate[enchantments={"minecraft:protection":255,"minecraft:unbreaking":255},unbreakable={}]
item replace entity @s armor.legs with minecraft:netherite_leggings[enchantments={"minecraft:protection":255,"minecraft:unbreaking":255},unbreakable={}]
item replace entity @s armor.feet with minecraft:netherite_boots[enchantments={"minecraft:protection":255,"minecraft:unbreaking":255},unbreakable={}]

# Zwaard level 255
give @s minecraft:netherite_sword[enchantments={"minecraft:sharpness":255,"minecraft:unbreaking":255,"minecraft:looting":255,"minecraft:fire_aspect":255},unbreakable={}]

# Tools normaal max
give @s minecraft:netherite_pickaxe[enchantments={"minecraft:efficiency":5,"minecraft:fortune":3,"minecraft:unbreaking":3,"minecraft:mending":1},unbreakable={}]
give @s minecraft:netherite_axe[enchantments={"minecraft:efficiency":5,"minecraft:fortune":3,"minecraft:unbreaking":3,"minecraft:mending":1},unbreakable={}]
give @s minecraft:netherite_shovel[enchantments={"minecraft:efficiency":5,"minecraft:fortune":3,"minecraft:unbreaking":3,"minecraft:mending":1},unbreakable={}]
give @s minecraft:netherite_hoe[enchantments={"minecraft:efficiency":5,"minecraft:fortune":3,"minecraft:unbreaking":3,"minecraft:mending":1},unbreakable={}]

# Eten
give @s minecraft:golden_apple 16

# Melding
title @s title {"text":"Orbital Kit","color":"gold","bold":true}
title @s subtitle {"text":"Wapens en armor klaar!","color":"yellow"}