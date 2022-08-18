#----GIVE ERROR BY DEFAULT----#
tag @s add ComError
#-------------EXCLUSIVE FOR LEGGINGS-------------#
execute if score #leap Enchopts matches 0 if data storage teplus:tech_anvil.ui CurrentItems[{Slot:6b}].tag.CustomEnchantments[{id:"Leaping"}] run function technical_anvil:interaction/merge/item_with_item/leaping
execute if score #smpl Enchopts matches 0 if data storage teplus:tech_anvil.ui CurrentItems[{Slot:6b}].tag.CustomEnchantments[{id:"SwimPlus"}] run function technical_anvil:interaction/merge/item_with_item/swim_plus
execute if score #lstlf Enchopts matches 0 if data storage teplus:tech_anvil.ui CurrentItems[{Slot:6b}].tag.CustomEnchantments[{id:"LastLife"}] run function technical_anvil:interaction/merge/item_with_item/last_life

#-------------SHARED ENCHANTMENTS-------------#

function technical_anvil:interaction/item_with_item/shared_enchantments/shared_recovery
function technical_anvil:interaction/item_with_item/shared_enchantments/shared_fragile
function technical_anvil:interaction/item_with_item/shared_enchantments/shared_sensitive