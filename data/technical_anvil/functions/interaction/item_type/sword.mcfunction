#----GIVE ERROR BY DEFAULT----#
tag @s add ComError
#-------------EXCLUSIVE FOR SWORD-------------#

execute if score #bobl Enchopts matches 0 if data storage teplus:tech_anvil.ench TeplusEnchantments[{id:"BloodyBlade"}] run function technical_anvil:interaction/merge/enchanted_items/bloody_blade
execute if score #lstnd Enchopts matches 0 if data storage teplus:tech_anvil.ench TeplusEnchantments[{id:"LastStand"}] run function technical_anvil:interaction/merge/enchanted_items/last_stand
execute if score #lfstl Enchopts matches 0 if data storage teplus:tech_anvil.ench TeplusEnchantments[{id:"LifeSteal"}] run function technical_anvil:interaction/merge/enchanted_items/life_steal

execute if score $Exceed tepext.manager matches 0 if data storage teplus:tech_anvil.ench TeplusVanilla[{id:"minecraft:fire_aspect"}] run function teplus_exten:exceed/combine/items/fire_aspect
execute if score $Exceed tepext.manager matches 0 if data storage teplus:tech_anvil.ench TeplusVanilla[{id:"minecraft:knockback"}] run function teplus_exten:exceed/combine/items/knockback
execute if score $Exceed tepext.manager matches 0 if data storage teplus:tech_anvil.ench TeplusVanilla[{id:"minecraft:looting"}] run function teplus_exten:exceed/combine/items/looting
execute if score $Exceed tepext.manager matches 0 if data storage teplus:tech_anvil.ench TeplusVanilla[{id:"minecraft:sweeping"}] run function teplus_exten:exceed/combine/items/sweeping


#-------------SHARED ENCHANTMENTS-------------#
execute if score $Exceed tepext.manager matches 0 run function technical_anvil:interaction/item_type/shared_enchantments/vanilla/shared_sharpness
execute if score $Exceed tepext.manager matches 0 run function technical_anvil:interaction/item_type/shared_enchantments/vanilla/shared_unbreaking

function technical_anvil:interaction/item_type/shared_enchantments/shared_anti_explosion
function technical_anvil:interaction/item_type/shared_enchantments/shared_attack_speed
function technical_anvil:interaction/item_type/shared_enchantments/shared_poison_aspect
function technical_anvil:interaction/item_type/shared_enchantments/shared_xp_boost
function technical_anvil:interaction/item_type/shared_enchantments/shared_fragile
function technical_anvil:interaction/item_type/shared_enchantments/shared_slippery
function technical_anvil:interaction/item_type/shared_enchantments/shared_fear