#----GIVE ERROR BY DEFAULT----#
tag @s add ComError
#-------------EXCLUSIVE FOR CHESTPLATE-------------#
execute if score #autfd Enchopts matches 0 if data storage teplus:tech_anvil.ui CurrentItems[{Slot:6b}].tag.CustomEnchantments[{id:"AutoFeed"}] run function technical_anvil:interaction/merge/item_with_item/auto_feed
execute if score #flskn Enchopts matches 0 if data storage teplus:tech_anvil.ui CurrentItems[{Slot:6b}].tag.CustomEnchantments[{id:"FlamingSkin"}] run function technical_anvil:interaction/merge/item_with_item/flaming_skin
execute if score #lfps Enchopts matches 0 if data storage teplus:tech_anvil.ui CurrentItems[{Slot:6b}].tag.CustomEnchantments[{id:"LifePlus"}] run function technical_anvil:interaction/merge/item_with_item/life_plus

#-------------SHARED ENCHANTMENTS-------------#

function technical_anvil:interaction/item_with_item/shared_enchantments/shared_anti_venom
function technical_anvil:interaction/item_with_item/shared_enchantments/shared_fragile
function technical_anvil:interaction/item_with_item/shared_enchantments/shared_sensitive