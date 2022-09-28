#----GIVE ERROR BY DEFAULT----#
tag @s add ComError
#-------------EXCLUSIVE FOR AXE-------------#

execute if score #chop Enchopts matches 0 if data storage teplus:tech_anvil.ench TeplusEnchantments[{id:"Chopping"}] run function technical_anvil:interaction/merge/enchanted_items/chopping
execute if score #tmbr Enchopts matches 0 if data storage teplus:tech_anvil.ench TeplusEnchantments[{id:"Timber"}] run function technical_anvil:interaction/merge/enchanted_items/timber
execute if score #trms Enchopts matches 0 if data storage teplus:tech_anvil.ench TeplusEnchantments[{id:"Transmission"}] run function technical_anvil:interaction/merge/enchanted_items/transmission
execute if score #strk Enchopts matches 0 if data storage teplus:tech_anvil.ench TeplusEnchantments[{id:"Striker"}] run function technical_anvil:interaction/merge/enchanted_items/striker

#-------------SHARED ENCHANTMENTS-------------#
execute if score $Exceed tepext.manager matches 0 run function technical_anvil:interaction/item_type/shared_enchantments/vanilla/shared_efficiency
execute if score $Exceed tepext.manager matches 0 run function technical_anvil:interaction/item_type/shared_enchantments/vanilla/shared_fortune
execute if score $Exceed tepext.manager matches 0 run function technical_anvil:interaction/item_type/shared_enchantments/vanilla/shared_sharpness
execute if score $Exceed tepext.manager matches 0 run function technical_anvil:interaction/item_type/shared_enchantments/vanilla/shared_unbreaking

function technical_anvil:interaction/item_type/shared_enchantments/shared_auto_smelt
function technical_anvil:interaction/item_type/shared_enchantments/shared_haste
function technical_anvil:interaction/item_type/shared_enchantments/shared_xp_boost
function technical_anvil:interaction/item_type/shared_enchantments/shared_fragile
function technical_anvil:interaction/item_type/shared_enchantments/shared_slippery
function technical_anvil:interaction/item_type/shared_enchantments/shared_fear
function technical_anvil:interaction/item_type/shared_enchantments/shared_exhaustion