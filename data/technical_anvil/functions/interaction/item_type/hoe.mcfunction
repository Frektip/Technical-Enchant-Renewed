#----GIVE ERROR BY DEFAULT----#
tag @s add ComError
#-------------EXCLUSIVE FOR HOE-------------#

execute if score #gndtl Enchopts matches 0 if data storage teplus:tech_anvil.ench TeplusEnchantments[{id:"GrandTilling"}] run function technical_anvil:interaction/merge/enchanted_items/grand_tilling
execute if score #hrvpl Enchopts matches 0 if data storage teplus:tech_anvil.ench TeplusEnchantments[{id:"HarvestingPlus"}] run function technical_anvil:interaction/merge/enchanted_items/harvesting_plus
execute if score #rplt Enchopts matches 0 if data storage teplus:tech_anvil.ench TeplusEnchantments[{id:"Replant"}] run function technical_anvil:interaction/merge/enchanted_items/replant
execute if score #sytr Enchopts matches 0 if data storage teplus:tech_anvil.ench TeplusEnchantments[{id:"Scyther"}] run function technical_anvil:interaction/merge/enchanted_items/scyther
execute if score #slrp Enchopts matches 0 if data storage teplus:tech_anvil.ench TeplusEnchantments[{id:"SoulReaper"}] run function technical_anvil:interaction/merge/enchanted_items/soul_reaper

#-------------SHARED ENCHANTMENTS-------------#
execute if score $Exceed tepext.manager matches 0 run function technical_anvil:interaction/item_type/shared_enchantments/vanilla/shared_efficiency
execute if score $Exceed tepext.manager matches 0 run function technical_anvil:interaction/item_type/shared_enchantments/vanilla/shared_fortune
execute if score $Exceed tepext.manager matches 0 run function technical_anvil:interaction/item_type/shared_enchantments/vanilla/shared_unbreaking

function technical_anvil:interaction/item_type/shared_enchantments/shared_fragile
function technical_anvil:interaction/item_type/shared_enchantments/shared_slippery
function technical_anvil:interaction/item_type/shared_enchantments/shared_exhaustion