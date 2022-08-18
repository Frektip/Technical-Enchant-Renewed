#----GIVE ERROR BY DEFAULT----#
tag @s add ComError
#-------------EXCLUSIVE FOR HOE-------------#

execute if score #gndtl Enchopts matches 0 if data storage teplus:tech_anvil.ui CurrentItems[{Slot:6b}].tag.CustomEnchantments[{id:"GrandTilling"}] run function technical_anvil:interaction/merge/item_with_item/grand_tilling
execute if score #hrvpl Enchopts matches 0 if data storage teplus:tech_anvil.ui CurrentItems[{Slot:6b}].tag.CustomEnchantments[{id:"HarvestingPlus"}] run function technical_anvil:interaction/merge/item_with_item/harvesting_plus
execute if score #rplt Enchopts matches 0 if data storage teplus:tech_anvil.ui CurrentItems[{Slot:6b}].tag.CustomEnchantments[{id:"Replant"}] run function technical_anvil:interaction/merge/item_with_item/replant
execute if score #sytr Enchopts matches 0 if data storage teplus:tech_anvil.ui CurrentItems[{Slot:6b}].tag.CustomEnchantments[{id:"Scyther"}] run function technical_anvil:interaction/merge/item_with_item/scyther
execute if score #slrp Enchopts matches 0 if data storage teplus:tech_anvil.ui CurrentItems[{Slot:6b}].tag.CustomEnchantments[{id:"SoulReaper"}] run function technical_anvil:interaction/merge/item_with_item/soul_reaper

#-------------SHARED ENCHANTMENTS-------------#
function technical_anvil:interaction/item_with_item/shared_enchantments/shared_fragile
function technical_anvil:interaction/item_with_item/shared_enchantments/shared_slippery