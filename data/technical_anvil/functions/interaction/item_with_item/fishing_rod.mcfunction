#----GIVE ERROR BY DEFAULT----#
tag @s add ComError
#-------------EXCLUSIVE FOR FISHING ROD-------------#

execute if score #sptr Enchopts matches 0 if data storage teplus:tech_anvil.ui CurrentItems[{Slot:6b}].tag.CustomEnchantments[{id:"Splatter"}] run function technical_anvil:interaction/merge/item_with_item/splatter

#-------------SHARED ENCHANTMENTS-------------#

function technical_anvil:interaction/item_with_item/shared_enchantments/shared_fragile
function technical_anvil:interaction/item_with_item/shared_enchantments/shared_slippery
function technical_anvil:interaction/item_with_item/shared_enchantments/shared_exhaustion