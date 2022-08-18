scoreboard players set $min random 0
scoreboard players set $max random 5
function enchantplus:random_uniform

#Randomly give an item (fishing rod or trident)
execute if score $out random matches 0..3 run item replace entity @s weapon.mainhand with minecraft:trident{Enchantments:[{}]}
execute if score $out random matches 4..5 run item replace entity @s weapon.mainhand with minecraft:fishing_rod{Enchantments:[{}]}

#Give Custom Enchantments
execute if predicate teplus_exten:spawn/mainhand/hold_fishing_rod run function teplus_exten:spawn/give/mainhand/melee/set_enchantments/fishing_rod
execute if predicate teplus_exten:spawn/mainhand/hold_trident run function teplus_exten:spawn/give/mainhand/melee/set_enchantments/trident

data modify entity @s HandItems[0].tag.CustomEnchantments set from storage tepspw:ench CustomEnchantments
data remove storage tepspw:ench CustomEnchantments