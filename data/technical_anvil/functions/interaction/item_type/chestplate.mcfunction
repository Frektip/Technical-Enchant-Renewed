#----GIVE ERROR BY DEFAULT----#
tag @s add ComError
#-------------EXCLUSIVE FOR CHESTPLATE-------------#
execute if score #autfd Enchopts matches 0 if data storage teplus:tech_anvil.ench TeplusEnchantments[{id:"AutoFeed"}] run function technical_anvil:interaction/merge/enchanted_items/auto_feed
execute if score #flskn Enchopts matches 0 if data storage teplus:tech_anvil.ench TeplusEnchantments[{id:"FlamingSkin"}] run function technical_anvil:interaction/merge/enchanted_items/flaming_skin
execute if score #lfps Enchopts matches 0 if data storage teplus:tech_anvil.ench TeplusEnchantments[{id:"LifePlus"}] run function technical_anvil:interaction/merge/enchanted_items/life_plus

#-------------SHARED ENCHANTMENTS-------------#
execute if score $Exceed tepext.manager matches 0 run function technical_anvil:interaction/item_type/shared_enchantments/vanilla/shared_protection
execute if score $Exceed tepext.manager matches 0 run function technical_anvil:interaction/item_type/shared_enchantments/vanilla/shared_thorns
execute if score $Exceed tepext.manager matches 0 run function technical_anvil:interaction/item_type/shared_enchantments/vanilla/shared_unbreaking

function technical_anvil:interaction/item_type/shared_enchantments/shared_anti_venom
function technical_anvil:interaction/item_type/shared_enchantments/shared_fragile
function technical_anvil:interaction/item_type/shared_enchantments/shared_sensitive