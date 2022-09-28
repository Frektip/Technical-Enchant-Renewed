#----GIVE ERROR BY DEFAULT----#
tag @s add ComError
#-------------EXCLUSIVE FOR BOW-------------#

execute if score #arch Enchopts matches 0 if data storage teplus:tech_anvil.ench TeplusEnchantments[{id:"Arachnid"}] run function technical_anvil:interaction/merge/enchanted_items/arachnid
execute if score #expl Enchopts matches 0 if data storage teplus:tech_anvil.ench TeplusEnchantments[{id:"Explosive"}] run function technical_anvil:interaction/merge/enchanted_items/explosive

execute if score $Exceed tepext.manager matches 0 if data storage teplus:tech_anvil.ench TeplusVanilla[{id:"minecraft:power"}] run function teplus_exten:exceed/combine/items/power
execute if score $Exceed tepext.manager matches 0 if data storage teplus:tech_anvil.ench TeplusVanilla[{id:"minecraft:punch"}] run function teplus_exten:exceed/combine/items/punch

#-------------SHARED ENCHANTMENTS-------------#
execute if score $Exceed tepext.manager matches 0 run function technical_anvil:interaction/item_type/shared_enchantments/vanilla/shared_unbreaking

function technical_anvil:interaction/item_type/shared_enchantments/shared_anti_explosion
function technical_anvil:interaction/item_type/shared_enchantments/shared_accuracy_shot
function technical_anvil:interaction/item_type/shared_enchantments/shared_fragile
function technical_anvil:interaction/item_type/shared_enchantments/shared_slippery
function technical_anvil:interaction/item_type/shared_enchantments/shared_fear