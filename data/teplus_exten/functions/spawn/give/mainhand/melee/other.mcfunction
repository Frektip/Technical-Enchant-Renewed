scoreboard players set $min random 0
scoreboard players set $max random 5
function enchantplus:random_uniform

#Randomly give an item (axe, sword, shovel, shield, hoe or pickaxe)
execute if score $out random matches 0 run function teplus_exten:spawn/give/mainhand/melee/set_item/axe
execute if score $out random matches 1 run function teplus_exten:spawn/give/mainhand/melee/set_item/hoe
execute if score $out random matches 2 run function teplus_exten:spawn/give/mainhand/melee/set_item/pickaxe
execute if score $out random matches 3 run item replace entity @s weapon.mainhand with shield{Enchantments:[{}]}
execute if score $out random matches 4 run function teplus_exten:spawn/give/mainhand/melee/set_item/shovel
execute if score $out random matches 5 run function teplus_exten:spawn/give/mainhand/melee/set_item/sword

#Give Custom Enchantments
execute if predicate teplus_exten:spawn/mainhand/hold_axe run function teplus_exten:spawn/give/mainhand/melee/set_enchantments/axe
execute if predicate teplus_exten:spawn/mainhand/hold_hoe run function teplus_exten:spawn/give/mainhand/melee/set_enchantments/hoe
execute if predicate teplus_exten:spawn/mainhand/hold_pickaxe run function teplus_exten:spawn/give/mainhand/melee/set_enchantments/pickaxe
execute if predicate teplus_exten:spawn/mainhand/hold_shield run function teplus_exten:spawn/give/mainhand/melee/set_enchantments/shield
execute if predicate teplus_exten:spawn/mainhand/hold_shovel run function teplus_exten:spawn/give/mainhand/melee/set_enchantments/shovel
execute if predicate teplus_exten:spawn/mainhand/hold_sword run function teplus_exten:spawn/give/mainhand/melee/set_enchantments/sword

data modify entity @s HandItems[0].tag.CustomEnchantments set from storage tepspw:ench CustomEnchantments
data remove storage tepspw:ench CustomEnchantments