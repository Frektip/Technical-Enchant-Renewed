#----GIVE ERROR BY DEFAULT----#
tag @s add ComError
#-------------EXCLUSIVE FOR CROSSBOW-------------#

execute if score #frbw Enchopts matches 0 if data storage teplus:tech_anvil.ench TeplusEnchantments[{id:"FireballWave"}] run function technical_anvil:interaction/merge/enchanted_items/fireball_wave
execute if score #skfg Enchopts matches 0 if data storage teplus:tech_anvil.ench TeplusEnchantments[{id:"ShockFangs"}] run function technical_anvil:interaction/merge/enchanted_items/shock_fangs
execute if score #snp Enchopts matches 0 if data storage teplus:tech_anvil.ench TeplusEnchantments[{id:"Sniper"}] run function technical_anvil:interaction/merge/enchanted_items/sniper

execute if score $Exceed tepext.manager matches 0 unless data storage teplus:tech_anvil.ui {ResultItem:{tag:{Enchantments:[{id:"minecraft:multishot"}]}}} if data storage teplus:tech_anvil.ench TeplusVanilla[{id:"minecraft:piercing"}] run function teplus_exten:exceed/combine/items/piercing

#-------------SHARED ENCHANTMENTS-------------#
execute if score $Exceed tepext.manager matches 0 run function technical_anvil:interaction/item_type/shared_enchantments/vanilla/shared_unbreaking

function technical_anvil:interaction/item_type/shared_enchantments/shared_accuracy_shot
function technical_anvil:interaction/item_type/shared_enchantments/shared_fragile
function technical_anvil:interaction/item_type/shared_enchantments/shared_slippery
function technical_anvil:interaction/item_type/shared_enchantments/shared_fear