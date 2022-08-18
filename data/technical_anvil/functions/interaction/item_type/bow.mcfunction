#----GIVE ERROR BY DEFAULT----#
tag @s add ComError
#-------------EXCLUSIVE FOR BOW-------------#

execute if score #arch Enchopts matches 0 if data storage teplus:tech_anvil.ui CurrentItems[{Slot:6b}].tag.StoredCustomEnchantments[{id:"Arachnid"}] run function technical_anvil:interaction/merge/item_with_book/arachnid
execute if score #expl Enchopts matches 0 if data storage teplus:tech_anvil.ui CurrentItems[{Slot:6b}].tag.StoredCustomEnchantments[{id:"Explosive"}] run function technical_anvil:interaction/merge/item_with_book/explosive

execute if score $Exceed tepext.manager matches 0 if data storage teplus:tech_anvil.ui CurrentItems[{Slot:6b}].tag.StoredEnchantments[{id:"minecraft:power"}] run function teplus_exten:exceed/combine/item_book/power
execute if score $Exceed tepext.manager matches 0 if data storage teplus:tech_anvil.ui CurrentItems[{Slot:6b}].tag.StoredEnchantments[{id:"minecraft:punch"}] run function teplus_exten:exceed/combine/item_book/punch

#-------------SHARED ENCHANTMENTS-------------#
execute if score $Exceed tepext.manager matches 0 run function technical_anvil:interaction/item_type/shared_enchantments/vanilla/shared_unbreaking

function technical_anvil:interaction/item_type/shared_enchantments/shared_anti_explosion
function technical_anvil:interaction/item_type/shared_enchantments/shared_accuracy_shot
function technical_anvil:interaction/item_type/shared_enchantments/shared_fragile
function technical_anvil:interaction/item_type/shared_enchantments/shared_slippery