#----GIVE ERROR BY DEFAULT----#
tag @s add ComError
#-------------EXCLUSIVE FOR TRIDENT-------------#

execute if score #mrgc Enchopts matches 0 if data storage teplus:tech_anvil.ui CurrentItems[{Slot:6b}].tag.CustomEnchantments[{id:"MarineGrace"}] run function technical_anvil:interaction/merge/item_with_item/marine_grace
execute if score #wtjt Enchopts matches 0 if data storage teplus:tech_anvil.ui CurrentItems[{Slot:6b}].tag.CustomEnchantments[{id:"Waterjet"}] run function technical_anvil:interaction/merge/item_with_item/waterjet

#-------------SHARED ENCHANTMENTS-------------#

execute if score #aksp Enchopts matches 0 run function technical_anvil:interaction/item_with_item/shared_enchantments/shared_attack_speed
function technical_anvil:interaction/item_with_item/shared_enchantments/shared_poison_aspect
function technical_anvil:interaction/item_with_item/shared_enchantments/shared_xp_boost
function technical_anvil:interaction/item_with_item/shared_enchantments/shared_fragile
function technical_anvil:interaction/item_with_item/shared_enchantments/shared_slippery
function technical_anvil:interaction/item_with_item/shared_enchantments/shared_fear