#----GIVE ERROR BY DEFAULT----#
tag @s add ComError
#-------------EXCLUSIVE FOR SHOVEL-------------#

execute if score #bgpt Enchopts matches 0 if data storage teplus:tech_anvil.ui CurrentItems[{Slot:6b}].tag.CustomEnchantments[{id:"BigPath"}] run function technical_anvil:interaction/merge/item_with_item/big_path
execute if score #exc Enchopts matches 0 if data storage teplus:tech_anvil.ui CurrentItems[{Slot:6b}].tag.CustomEnchantments[{id:"Excavator"}] run function technical_anvil:interaction/merge/item_with_item/excavator

#-------------SHARED ENCHANTMENTS-------------#

function technical_anvil:interaction/item_with_item/shared_enchantments/shared_auto_smelt
function technical_anvil:interaction/item_with_item/shared_enchantments/shared_haste
function technical_anvil:interaction/item_with_item/shared_enchantments/shared_fragile
function technical_anvil:interaction/item_with_item/shared_enchantments/shared_slippery
function technical_anvil:interaction/item_with_item/shared_enchantments/shared_exhaustion