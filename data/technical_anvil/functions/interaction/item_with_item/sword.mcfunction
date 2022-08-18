#----GIVE ERROR BY DEFAULT----#
tag @s add ComError
#-------------EXCLUSIVE FOR SWORD-------------#

execute if score #bobl Enchopts matches 0 if data storage teplus:tech_anvil.ui CurrentItems[{Slot:6b}].tag.CustomEnchantments[{id:"BloodyBlade"}] run function technical_anvil:interaction/merge/item_with_item/bloody_blade
execute if score #lstnd Enchopts matches 0 if data storage teplus:tech_anvil.ui CurrentItems[{Slot:6b}].tag.CustomEnchantments[{id:"LastStand"}] run function technical_anvil:interaction/merge/item_with_item/last_stand
execute if score #lfstl Enchopts matches 0 if data storage teplus:tech_anvil.ui CurrentItems[{Slot:6b}].tag.CustomEnchantments[{id:"LifeSteal"}] run function technical_anvil:interaction/merge/item_with_item/life_steal

#-------------SHARED ENCHANTMENTS-------------#

function technical_anvil:interaction/item_with_item/shared_enchantments/shared_anti_explosion
function technical_anvil:interaction/item_with_item/shared_enchantments/shared_attack_speed
function technical_anvil:interaction/item_with_item/shared_enchantments/shared_poison_aspect
function technical_anvil:interaction/item_with_item/shared_enchantments/shared_xp_boost
function technical_anvil:interaction/item_with_item/shared_enchantments/shared_fragile
function technical_anvil:interaction/item_with_item/shared_enchantments/shared_slippery