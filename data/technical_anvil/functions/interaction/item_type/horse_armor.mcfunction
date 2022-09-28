#----GIVE ERROR BY DEFAULT----#
tag @s add ComError
#---- NO EXCLUSIVE ENCHANTMENTS?? ----#
# ¯\_( ͡o ͜ʖ ͡O)_/¯
#But at least you can combine it with frost walker :)
execute if data storage teplus:tech_anvil.ench TeplusVanilla[{id:"minecraft:frost_walker"}] run function technical_anvil:interaction/merge/enchanted_items/frost_walker

#And with feather falling, respiration and thorns if Exceed enchantments
# option is enabled
execute if score $Exceed tepext.manager matches 0 if data storage teplus:tech_anvil.ench TeplusVanilla[{id:"minecraft:feather_falling"}] run function teplus_exten:exceed/combine/items/feather_falling
execute if score $Exceed tepext.manager matches 0 run function technical_anvil:interaction/item_type/shared_enchantments/vanilla/shared_thorns

#-------------SHARED ENCHANTMENTS-------------#
function technical_anvil:interaction/item_type/shared_enchantments/shared_anti_explosion
function technical_anvil:interaction/item_type/shared_enchantments/shared_anti_venom
function technical_anvil:interaction/item_type/shared_enchantments/shared_lava_walker
function technical_anvil:interaction/item_type/shared_enchantments/shared_recovery
function technical_anvil:interaction/item_type/shared_enchantments/shared_fragile
function technical_anvil:interaction/item_type/shared_enchantments/shared_sensitive