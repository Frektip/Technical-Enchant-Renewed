#----GIVE ERROR BY DEFAULT----#
tag @s add ComError
#-------------EXCLUSIVE FOR BOOTS-------------#
execute if score #aglt Enchopts matches 0 if data storage teplus:tech_anvil.ui CurrentItems[{Slot:6b}].tag.StoredCustomEnchantments[{id:"Agility"}] run function technical_anvil:interaction/merge/item_with_book/agility
execute if score #dasher Enchopts matches 0 if data storage teplus:tech_anvil.ui CurrentItems[{Slot:6b}].tag.StoredCustomEnchantments[{id:"Dasher"}] run function technical_anvil:interaction/merge/item_with_book/dasher
execute if score #skwk Enchopts matches 0 if data storage teplus:tech_anvil.ui CurrentItems[{Slot:6b}].tag.StoredCustomEnchantments[{id:"SkyWalk"}] run function technical_anvil:interaction/merge/item_with_book/sky_walk


execute if score $Exceed tepext.manager matches 0 if data storage teplus:tech_anvil.ui CurrentItems[{Slot:6b}].tag.StoredEnchantments[{id:"minecraft:feather_falling"}] run function teplus_exten:exceed/combine/item_book/feather_falling

#-------------SHARED ENCHANTMENTS-------------#
execute if score $Exceed tepext.manager matches 0 run function technical_anvil:interaction/item_type/shared_enchantments/vanilla/shared_protection
execute if score $Exceed tepext.manager matches 0 run function technical_anvil:interaction/item_type/shared_enchantments/vanilla/shared_thorns
execute if score $Exceed tepext.manager matches 0 run function technical_anvil:interaction/item_type/shared_enchantments/vanilla/shared_unbreaking

function technical_anvil:interaction/item_type/shared_enchantments/shared_lava_walker
function technical_anvil:interaction/item_type/shared_enchantments/shared_fragile
function technical_anvil:interaction/item_type/shared_enchantments/shared_sensitive