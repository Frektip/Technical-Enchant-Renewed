#----GIVE ERROR BY DEFAULT----#
tag @s add ComError
#-------------EXCLUSIVE FOR ELYTRA-------------#

execute if score #armd Enchopts matches 0 if data storage teplus:tech_anvil.ench TeplusEnchantments[{id:"Armored"}] run function technical_anvil:interaction/merge/enchanted_items/armored

#-------------SHARED ENCHANTMENTS-------------#
execute if score $Exceed tepext.manager matches 0 run function technical_anvil:interaction/item_type/shared_enchantments/vanilla/shared_unbreaking

function technical_anvil:interaction/item_type/shared_enchantments/shared_fragile
function technical_anvil:interaction/item_type/shared_enchantments/shared_sensitive