#----GIVE ERROR BY DEFAULT----#
tag @s add ComError
#-------------EXCLUSIVE FOR HELMET-------------#
execute if score #brvis Enchopts matches 0 if data storage teplus:tech_anvil.ench TeplusEnchantments[{id:"BrightVision"}] run function technical_anvil:interaction/merge/enchanted_items/bright_vision
execute if score #mgnt Enchopts matches 0 if data storage teplus:tech_anvil.ench TeplusEnchantments[{id:"Magnet"}] run function technical_anvil:interaction/merge/enchanted_items/magnet
execute if score #tmbrk Enchopts matches 0 if data storage teplus:tech_anvil.ench TeplusEnchantments[{id:"TimeBreaker"}] run function technical_anvil:interaction/merge/enchanted_items/time_breaker


execute if score $Exceed tepext.manager matches 0 if data storage teplus:tech_anvil.ench TeplusVanilla[{id:"minecraft:respiration"}] run function teplus_exten:exceed/combine/items/respiration


#-------------SHARED ENCHANTMENTS-------------#
execute if score $Exceed tepext.manager matches 0 run function technical_anvil:interaction/item_type/shared_enchantments/vanilla/shared_protection
execute if score $Exceed tepext.manager matches 0 run function technical_anvil:interaction/item_type/shared_enchantments/vanilla/shared_thorns
execute if score $Exceed tepext.manager matches 0 run function technical_anvil:interaction/item_type/shared_enchantments/vanilla/shared_unbreaking

function technical_anvil:interaction/item_type/shared_enchantments/shared_anti_explosion
function technical_anvil:interaction/item_type/shared_enchantments/shared_fragile
function technical_anvil:interaction/item_type/shared_enchantments/shared_sensitive