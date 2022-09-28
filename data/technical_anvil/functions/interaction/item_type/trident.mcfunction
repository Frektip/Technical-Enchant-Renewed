#----GIVE ERROR BY DEFAULT----#
tag @s add ComError
#-------------EXCLUSIVE FOR TRIDENT-------------#

execute if score #mrgc Enchopts matches 0 if data storage teplus:tech_anvil.ench TeplusEnchantments[{id:"MarineGrace"}] run function technical_anvil:interaction/merge/enchanted_items/marine_grace
execute if score #wtjt Enchopts matches 0 if data storage teplus:tech_anvil.ench TeplusEnchantments[{id:"Waterjet"}] run function technical_anvil:interaction/merge/enchanted_items/waterjet

execute if score $Exceed tepext.manager matches 0 if data storage teplus:tech_anvil.ench TeplusVanilla[{id:"minecraft:impaling"}] run function teplus_exten:exceed/combine/items/impaling
execute if score $Exceed tepext.manager matches 0 unless data storage teplus:tech_anvil.ui {ResultItem:{tag:{Enchantments:[{id:"minecraft:loyalty"}]}}} unless data storage teplus:tech_anvil.ui {ResultItem:{tag:{Enchantments:[{id:"minecraft:channeling"}]}}} if data storage teplus:tech_anvil.ench TeplusVanilla[{id:"minecraft:riptide"}] run function teplus_exten:exceed/combine/items/riptide

#-------------SHARED ENCHANTMENTS-------------#
execute if score $Exceed tepext.manager matches 0 run function technical_anvil:interaction/item_type/shared_enchantments/vanilla/shared_sharpness
execute if score $Exceed tepext.manager matches 0 run function technical_anvil:interaction/item_type/shared_enchantments/vanilla/shared_unbreaking

function technical_anvil:interaction/item_type/shared_enchantments/shared_attack_speed
function technical_anvil:interaction/item_type/shared_enchantments/shared_poison_aspect
function technical_anvil:interaction/item_type/shared_enchantments/shared_xp_boost
function technical_anvil:interaction/item_type/shared_enchantments/shared_fragile
function technical_anvil:interaction/item_type/shared_enchantments/shared_slippery
function technical_anvil:interaction/item_type/shared_enchantments/shared_fear