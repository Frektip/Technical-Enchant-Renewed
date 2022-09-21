#----GIVE ERROR BY DEFAULT----#
tag @s add ComError
#-------------EXCLUSIVE FOR AXE-------------#

execute if score #chop Enchopts matches 0 if data storage teplus:tech_anvil.ui CurrentItems[{Slot:6b}].tag.CustomEnchantments[{id:"Chopping"}] run function technical_anvil:interaction/merge/item_with_item/chopping
execute if score #tmbr Enchopts matches 0 if data storage teplus:tech_anvil.ui CurrentItems[{Slot:6b}].tag.CustomEnchantments[{id:"Timber"}] run function technical_anvil:interaction/merge/item_with_item/timber
execute if score #trms Enchopts matches 0 if data storage teplus:tech_anvil.ui CurrentItems[{Slot:6b}].tag.CustomEnchantments[{id:"Transmission"}] run function technical_anvil:interaction/merge/item_with_item/transmission
execute if score #strk Enchopts matches 0 if data storage teplus:tech_anvil.ui CurrentItems[{Slot:6b}].tag.CustomEnchantments[{id:"Striker"}] run function technical_anvil:interaction/merge/item_with_item/striker

#-------------SHARED ENCHANTMENTS-------------#

function technical_anvil:interaction/item_with_item/shared_enchantments/shared_auto_smelt
function technical_anvil:interaction/item_with_item/shared_enchantments/shared_haste
function technical_anvil:interaction/item_with_item/shared_enchantments/shared_xp_boost
function technical_anvil:interaction/item_with_item/shared_enchantments/shared_fragile
function technical_anvil:interaction/item_with_item/shared_enchantments/shared_slippery
function technical_anvil:interaction/item_with_item/shared_enchantments/shared_fear
function technical_anvil:interaction/item_with_item/shared_enchantments/shared_exhaustion