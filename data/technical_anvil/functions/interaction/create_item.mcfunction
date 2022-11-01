#-------------CREATE ITEM NBT--------------#
data merge storage teplus:tech_anvil.ui {ResultItem:{Slot:22b,id:"minecraft:air",Count:1b}}
data modify storage teplus:tech_anvil.ui ResultItem.id set from storage teplus:tech_anvil.ui CurrentItems[{Slot:2b}].id
data modify storage teplus:tech_anvil.ui ResultItem.tag set from storage teplus:tech_anvil.ui CurrentItems[{Slot:2b}].tag
#-------CHECK WHAT ITEMS ARE COMBINED------#
#Page of Power with Page of Power
execute if entity @s[nbt={Items:[{Slot:2b,Count:1b,tag:{TeplusPower_page:1b}}]},nbt={Items:[{Slot:6b,Count:1b,tag:{TeplusPower_page:1b}}]}] run function technical_anvil:interaction/item_check/power_pages

#Item with an enchanted book
execute if entity @s[tag=!Is.same_item,tag=!TCHA.inpbk,nbt=!{Items:[{Slot:2b,id:"minecraft:enchanted_book"}]}] run function #technical_anvil:interaction/check_item_with_book

#Item with the same item type
execute if entity @s[tag=Is.same_item] run function #technical_anvil:interaction/check_item_with_item

#Encahnted book with Enchanted Book
execute if entity @s[nbt={Items:[{Slot:2b,id:"minecraft:enchanted_book"}]}] run function technical_anvil:interaction/item_check/book_with_book

##------------DETECTING WHAT COMBINATION HAS BEEN DONDE-------------##
#-------BOOK WITH BOOK-------#
# -Only Custom Enchantments
execute if entity @s[tag=!CurseApply,tag=!VEPApply,tag=CEnchApply] if data storage teplus:tech_anvil.ui ResultItem.tag.StoredCustomEnchantments[0] run function technical_anvil:interaction/create_item_succeed
execute if entity @s[tag=!CurseApply,tag=!VEPApply,tag=CEnchApply] unless data storage teplus:tech_anvil.ui ResultItem.tag.StoredCustomEnchantments[0] run function technical_anvil:interaction/create_item_failed

# -Only Custom Curses
execute if entity @s[tag=!CEnchApply,tag=!VEPApply,tag=CurseApply] if data storage teplus:tech_anvil.ui ResultItem.tag.StoredCustomCurse[0] run function technical_anvil:interaction/create_item_succeed
execute if entity @s[tag=!CEnchApply,tag=!VEPApply,tag=CurseApply] unless data storage teplus:tech_anvil.ui ResultItem.tag.StoredCustomCurse[0] run function technical_anvil:interaction/create_item_failed

#Only Vanilla+ Enchanted books
execute if entity @s[tag=!CurseApply,tag=!CEnchApply,tag=VEPApply] if data storage teplus:tech_anvil.ui ResultItem.tag.MaxEnch run function technical_anvil:interaction/create_item_succeed
execute if entity @s[tag=!CurseApply,tag=!CEnchApply,tag=VEPApply] unless data storage teplus:tech_anvil.ui ResultItem.tag.MaxEnch run function technical_anvil:interaction/create_item_failed

#Weird Combinations
# -Has Custom Enchantments and Vanilla Enchantments
execute if entity @s[tag=CEnchApply,tag=VEPApply,tag=!CurseApply] if data storage teplus:tech_anvil.ui ResultItem.tag.StoredCustomEnchantments[0] if data storage teplus:tech_anvil.ui ResultItem.tag.MaxEnch run function technical_anvil:interaction/create_item_succeed
# -Has Custom Curse and Custom Enchantments
execute if entity @s[tag=CEnchApply,tag=CurseApply,tag=!VEPApply] if data storage teplus:tech_anvil.ui ResultItem.tag.StoredCustomEnchantments[0] if data storage teplus:tech_anvil.ui ResultItem.tag.StoredCustomCurse[0] run function technical_anvil:interaction/create_item_succeed
# -Has Custom Curse and Vanilla Enchantments
execute if entity @s[tag=CurseApply,tag=VEPApply,tag=!CEnchApply] if data storage teplus:tech_anvil.ui ResultItem.tag.MaxEnch if data storage teplus:tech_anvil.ui ResultItem.tag.StoredCustomCurse[0] run function technical_anvil:interaction/create_item_succeed
# -Has Custom Curse , Vanilla Enchantments , Custom Enchantments
execute if entity @s[tag=CurseApply,tag=CEnchApply,tag=VEPApply] if data storage teplus:tech_anvil.ui ResultItem.tag.MaxEnch if data storage teplus:tech_anvil.ui ResultItem.tag.StoredCustomCurse[0] if data storage teplus:tech_anvil.ui ResultItem.tag.StoredCustomCurse[0] run function technical_anvil:interaction/create_item_succeed

#-------ITEM WITH BOOK / ITEM WITH ITEM-------#
execute if entity @s[tag=CEitm] if data storage teplus:tech_anvil.ui ResultItem.tag.CustomEnchantments[0] run function technical_anvil:interaction/create_item_succeed
execute if entity @s[tag=CEitm] if data storage teplus:tech_anvil.ui ResultItem.tag.CustomCurse run function technical_anvil:interaction/create_item_succeed
execute if entity @s[tag=CEitm] if data storage teplus:tech_anvil.ui ResultItem.tag.MaxEnch run function technical_anvil:interaction/create_item_succeed
#Only for horse armor
execute if entity @s[tag=CEitm] if data storage teplus:tech_anvil.ui {ResultItem:{tag:{Teplus:{item_type:"HORSE_ARMOR"},Enchantments:[{id:"minecraft:frost_walker"}]}}} run function technical_anvil:interaction/create_item_succeed
#Detect when an enchantment is not compatible with an item
execute if entity @s[tag=ComError] run function technical_anvil:interaction/create_item_failed


#--------REMOVE TAGS--------#
tag @s remove ComError

#For books when detect a custom curse, custom enchantment
# or exceeded vanilla enchantment
tag @s remove CurseApply
tag @s remove CEnchApply
tag @s remove VEPApply

#For items
tag @s remove CEitm

#If the output is an item or an enchanted book
tag @s remove TCHA.inpbk
tag @s remove TCHA.inpit

#In case we merge item with the same item type
tag @s remove Is.same_item