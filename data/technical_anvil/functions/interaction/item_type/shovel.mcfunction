#----GIVE ERROR BY DEFAULT----#
tag @s add ComError
#-------------EXCLUSIVE FOR SHOVEL-------------#

execute if score #bgpt Enchopts matches 0 if data storage teplus:tech_anvil.ench TeplusEnchantments[{id:"BigPath"}] run function technical_anvil:interaction/merge/enchanted_items/big_path
execute if score #exc Enchopts matches 0 if data storage teplus:tech_anvil.ench TeplusEnchantments[{id:"Excavator"}] run function technical_anvil:interaction/merge/enchanted_items/excavator

#-------------SHARED ENCHANTMENTS-------------#
execute if score $Exceed tepext.manager matches 0 run function technical_anvil:interaction/item_type/shared_enchantments/vanilla/shared_efficiency
execute if score $Exceed tepext.manager matches 0 run function technical_anvil:interaction/item_type/shared_enchantments/vanilla/shared_fortune
execute if score $Exceed tepext.manager matches 0 run function technical_anvil:interaction/item_type/shared_enchantments/vanilla/shared_unbreaking

function technical_anvil:interaction/item_type/shared_enchantments/shared_auto_smelt
function technical_anvil:interaction/item_type/shared_enchantments/shared_haste
function technical_anvil:interaction/item_type/shared_enchantments/shared_fragile
function technical_anvil:interaction/item_type/shared_enchantments/shared_slippery
function technical_anvil:interaction/item_type/shared_enchantments/shared_exhaustion