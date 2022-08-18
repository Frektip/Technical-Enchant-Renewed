#----GIVE ERROR BY DEFAULT----#
tag @s add ComError
#-------------EXCLUSIVE FOR SHEARS-------------#

execute if score #mlcl Enchopts matches 0 if data storage teplus:tech_anvil.ui CurrentItems[{Slot:6b}].tag.CustomEnchantments[{id:"Multicolor"}] run function technical_anvil:interaction/merge/item_with_item/multicolor

#-------------SHARED ENCHANTMENTS-------------#

function technical_anvil:interaction/item_with_item/shared_enchantments/shared_fragile
function technical_anvil:interaction/item_with_item/shared_enchantments/shared_slippery