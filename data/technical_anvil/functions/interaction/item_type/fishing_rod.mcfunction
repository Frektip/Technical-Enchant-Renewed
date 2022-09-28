#----GIVE ERROR BY DEFAULT----#
tag @s add ComError
#-------------EXCLUSIVE FOR FISHING ROD-------------#

execute if score #sptr Enchopts matches 0 if data storage teplus:tech_anvil.ench TeplusEnchantments[{id:"Splatter"}] run function technical_anvil:interaction/merge/enchanted_items/splatter

execute if score $Exceed tepext.manager matches 0 if data storage teplus:tech_anvil.ench TeplusVanilla[{id:"minecraft:luck_of_the_sea"}] run function teplus_exten:exceed/combine/items/luck_of_the_sea
execute if score $Exceed tepext.manager matches 0 if data storage teplus:tech_anvil.ench TeplusVanilla[{id:"minecraft:lure"}] run function teplus_exten:exceed/combine/items/lure

#-------------SHARED ENCHANTMENTS-------------#
execute if score $Exceed tepext.manager matches 0 run function technical_anvil:interaction/item_type/shared_enchantments/vanilla/shared_unbreaking

function technical_anvil:interaction/item_type/shared_enchantments/shared_fragile
function technical_anvil:interaction/item_type/shared_enchantments/shared_slippery
function technical_anvil:interaction/item_type/shared_enchantments/shared_exhaustion