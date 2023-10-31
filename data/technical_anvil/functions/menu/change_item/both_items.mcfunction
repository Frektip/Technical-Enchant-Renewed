#------------FAILED BY DEFAULT-------------#
tag @s remove CanCombine
function technical_anvil:menu/change_item/deactivate_slots

#Update the storage to get the ID's from both inputs
data modify storage teplus:tech_anvil.ui SectionChange1 set from storage teplus:tech_anvil.ui CurrentItems[{Slot:2b}]
data modify storage teplus:tech_anvil.ui SectionChange2 set from storage teplus:tech_anvil.ui CurrentItems[{Slot:6b}]




##-------ENCHANTED BOOK ENCHANTMENTS AND CURSES--------#
execute if score #mrgbk game.Opts matches 0 if data storage teplus:tech_anvil.ui CurrentItems[{Slot:2b}].tag.StoredCustomEnchantments if data storage teplus:tech_anvil.ui CurrentItems[{Slot:6b}].tag.StoredCustomEnchantments run function technical_anvil:menu/with_two_items
execute if score #mrgbk game.Opts matches 0 if data storage teplus:tech_anvil.ui CurrentItems[{Slot:2b}].tag.StoredCustomCurse if data storage teplus:tech_anvil.ui CurrentItems[{Slot:6b}].tag.StoredCustomEnchantments run function technical_anvil:menu/with_two_items
execute if score #mrgbk game.Opts matches 0 if data storage teplus:tech_anvil.ui CurrentItems[{Slot:2b}].tag.StoredCustomEnchantments if data storage teplus:tech_anvil.ui CurrentItems[{Slot:6b}].tag.StoredCustomCurse run function technical_anvil:menu/with_two_items
execute if score #mrgbk game.Opts matches 0 if data storage teplus:tech_anvil.ui CurrentItems[{Slot:2b}].tag.StoredCustomCurse if data storage teplus:tech_anvil.ui CurrentItems[{Slot:6b}].tag.StoredCustomCurse run function technical_anvil:menu/with_two_items








##--EXCEED VANILLA ENCHANTMENTS--#
#FOR BOOKS
# Chech only for enchantments that can increase their vanilla level
execute if score $Exceed tepext.manager matches 0 run function technical_anvil:menu/vanilla_test
# See if the conditions are meet for merging the item
#Merging the minimum value to increase the book level
# Like EffV and EffV
execute if score $Exceed tepext.manager matches 0 if entity @s[tag=tech_anv.match_exceed] run function technical_anvil:menu/with_two_items

#For books that already are exceeded, check for MaxEnch nbt
execute if score $Exceed tepext.manager matches 0 if data storage teplus:tech_anvil.ui CurrentItems[{Slot:2b}].tag.MaxEnch if data storage teplus:tech_anvil.ui CurrentItems[{Slot:6b}].tag.MaxEnch run function technical_anvil:menu/with_two_items
execute if score $Exceed tepext.manager matches 0 if data storage teplus:tech_anvil.ui CurrentItems[{Slot:2b}].tag.MaxEnch if data storage teplus:tech_anvil.ui CurrentItems[{Slot:6b}].tag.StoredCustomEnchantments run function technical_anvil:menu/with_two_items

#Combine custom enchanted books and Exceeded books
execute if score $Exceed tepext.manager matches 0 if data storage teplus:tech_anvil.ui CurrentItems[{Slot:2b}].tag.StoredCustomEnchantments if data storage teplus:tech_anvil.ui CurrentItems[{Slot:6b}].tag.MaxEnch run function technical_anvil:menu/with_two_items

#Combine custom cursed enchanted books and Exceeded books
execute if score $Exceed tepext.manager matches 0 if data storage teplus:tech_anvil.ui CurrentItems[{Slot:2b}].tag.MaxEnch if data storage teplus:tech_anvil.ui CurrentItems[{Slot:6b}].tag.StoredCustomCurse run function technical_anvil:menu/with_two_items
execute if score $Exceed tepext.manager matches 0 if data storage teplus:tech_anvil.ui CurrentItems[{Slot:2b}].tag.StoredCustomCurse if data storage teplus:tech_anvil.ui CurrentItems[{Slot:6b}].tag.MaxEnch run function technical_anvil:menu/with_two_items










##--COMBINING ITEMS WITH CUSTOM ENCHANTMENTS--##
#Debug all enchantable items, so it is easier to recognize 
function #technical_anvil:menu/item_debug
# See if the conditions are meet to enchant the item

#Item left; custom enchanted book right
execute if score #itwbk game.Opts matches 0 if data storage teplus:tech_anvil.ui CurrentItems[{Slot:2b}].tag.EnchCore if data storage teplus:tech_anvil.ui CurrentItems[{Slot:6b}].tag.StoredCustomEnchantments run function technical_anvil:menu/with_two_items

#Item left; custom cursed enchanted book right
execute if score #itwbk game.Opts matches 0 if data storage teplus:tech_anvil.ui CurrentItems[{Slot:2b}].tag.EnchCore if data storage teplus:tech_anvil.ui CurrentItems[{Slot:6b}].tag.StoredCustomCurse run function technical_anvil:menu/with_two_items

#Item left; Exceeded book right
execute if score $Exceed tepext.manager matches 0 if data storage teplus:tech_anvil.ui CurrentItems[{Slot:2b}].tag.EnchCore if data storage teplus:tech_anvil.ui CurrentItems[{Slot:6b}].tag.MaxEnch run function technical_anvil:menu/with_two_items

# Special exception to horse armor (to add frost walker enchantment)
execute if data storage teplus:tech_anvil.ui CurrentItems[{Slot:2b}].tag.EnchCore if data storage teplus:tech_anvil.ui CurrentItems[{Slot:6b}].tag.StoredEnchantments[{id:"minecraft:frost_walker"}] run function technical_anvil:menu/with_two_items








##--COMBINING ITEMS WITH ITEMS--##
execute if score #mrgit game.Opts matches 0 run function #technical_anvil:menu/match_item_test
execute if score #mrgit game.Opts matches 0 if entity @s[tag=Is.same_item] run function #technical_anvil:menu/item_debug_slot6
execute if score #mrgit game.Opts matches 0 if entity @s[tag=Is.same_item] if data storage teplus:tech_anvil.ui CurrentItems[{Slot:2b}].tag.EnchCore if data storage teplus:tech_anvil.ui CurrentItems[{Slot:6b}].tag.EnchCore run function technical_anvil:menu/with_two_items









##--EXPERIENCE CRYSTAL MERGING--##
execute if data storage teplus:tech_anvil.ui CurrentItems[{Slot:2b}].tag.Teplus_xp_crystal run tag @s add TCHA.inxpcrst

execute if entity @s[tag=TCHA.inxpcrst] run function technical_anvil:menu/with_two_items

#------------------------------------------#