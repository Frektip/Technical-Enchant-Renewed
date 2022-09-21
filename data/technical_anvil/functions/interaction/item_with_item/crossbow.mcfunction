#----GIVE ERROR BY DEFAULT----#
tag @s add ComError
#-------------EXCLUSIVE FOR CROSSBOW-------------#

execute if score #frbw Enchopts matches 0 if data storage teplus:tech_anvil.ui CurrentItems[{Slot:6b}].tag.CustomEnchantments[{id:"FireballWave"}] run function technical_anvil:interaction/merge/item_with_item/fireball_wave
execute if score #skfg Enchopts matches 0 if data storage teplus:tech_anvil.ui CurrentItems[{Slot:6b}].tag.CustomEnchantments[{id:"ShockFangs"}] run function technical_anvil:interaction/merge/item_with_item/shock_fangs
execute if score #snp Enchopts matches 0 if data storage teplus:tech_anvil.ui CurrentItems[{Slot:6b}].tag.CustomEnchantments[{id:"Sniper"}] run function technical_anvil:interaction/merge/item_with_item/sniper

#-------------SHARED ENCHANTMENTS-------------#

function technical_anvil:interaction/item_with_item/shared_enchantments/shared_accuracy_shot
function technical_anvil:interaction/item_with_item/shared_enchantments/shared_fragile
function technical_anvil:interaction/item_with_item/shared_enchantments/shared_slippery
function technical_anvil:interaction/item_with_item/shared_enchantments/shared_fear