#----GIVE ERROR BY DEFAULT----#
tag @s add ComError
#-------------EXCLUSIVE FOR HELMET-------------#
execute if score #brvis Enchopts matches 0 if data storage teplus:tech_anvil.ui CurrentItems[{Slot:6b}].tag.CustomEnchantments[{id:"BrightVision"}] run function technical_anvil:interaction/merge/item_with_item/bright_vision
execute if score #mgnt Enchopts matches 0 if data storage teplus:tech_anvil.ui CurrentItems[{Slot:6b}].tag.CustomEnchantments[{id:"Magnet"}] run function technical_anvil:interaction/merge/item_with_item/magnet
execute if score #tmbrk Enchopts matches 0 if data storage teplus:tech_anvil.ui CurrentItems[{Slot:6b}].tag.CustomEnchantments[{id:"TimeBreaker"}] run function technical_anvil:interaction/merge/item_with_item/time_breaker

#-------------SHARED ENCHANTMENTS-------------#

function technical_anvil:interaction/item_with_item/shared_enchantments/shared_anti_explosion
function technical_anvil:interaction/item_with_item/shared_enchantments/shared_fragile
function technical_anvil:interaction/item_with_item/shared_enchantments/shared_sensitive