#----GIVE ERROR BY DEFAULT----#
tag @s add ComError
#-------------EXCLUSIVE FOR PICKAXE-------------#
#Check incompatibilities
execute if score #mnpl Enchopts matches 0 if data storage teplus:tech_anvil.ui CurrentItems[{Slot:6b}].tag.CustomEnchantments[{id:"MiningPlus"}] unless data storage teplus:tech_anvil.ui ResultItem.tag.CustomEnchantments[{id:"VeinMiner"}] run function technical_anvil:interaction/merge/item_with_item/mining_plus
execute if score #vnmr Enchopts matches 0 if data storage teplus:tech_anvil.ui CurrentItems[{Slot:6b}].tag.CustomEnchantments[{id:"VeinMiner"}] unless data storage teplus:tech_anvil.ui ResultItem.tag.CustomEnchantments[{id:"MiningPlus"}] run function technical_anvil:interaction/merge/item_with_item/vein_miner

#-------------SHARED ENCHANTMENTS-------------#

function technical_anvil:interaction/item_with_item/shared_enchantments/shared_auto_smelt
function technical_anvil:interaction/item_with_item/shared_enchantments/shared_haste
function technical_anvil:interaction/item_with_item/shared_enchantments/shared_fragile
function technical_anvil:interaction/item_with_item/shared_enchantments/shared_slippery
function technical_anvil:interaction/item_with_item/shared_enchantments/shared_exhaustion