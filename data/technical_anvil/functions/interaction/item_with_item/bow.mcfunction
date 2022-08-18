#----GIVE ERROR BY DEFAULT----#
tag @s add ComError
#-------------EXCLUSIVE FOR BOW-------------#

execute if score #arch Enchopts matches 0 if data storage teplus:tech_anvil.ui CurrentItems[{Slot:6b}].tag.CustomEnchantments[{id:"Arachnid"}] run function technical_anvil:interaction/merge/item_with_item/arachnid
execute if score #expl Enchopts matches 0 if data storage teplus:tech_anvil.ui CurrentItems[{Slot:6b}].tag.CustomEnchantments[{id:"Explosive"}] run function technical_anvil:interaction/merge/item_with_item/explosive

#-------------SHARED ENCHANTMENTS-------------#

function technical_anvil:interaction/item_with_item/shared_enchantments/shared_anti_explosion
function technical_anvil:interaction/item_with_item/shared_enchantments/shared_accuracy_shot
function technical_anvil:interaction/item_with_item/shared_enchantments/shared_fragile
function technical_anvil:interaction/item_with_item/shared_enchantments/shared_slippery