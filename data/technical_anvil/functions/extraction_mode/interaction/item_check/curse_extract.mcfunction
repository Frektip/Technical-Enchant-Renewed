#-------------CREATE ITEM NBT--------------#
data merge storage teplus:tech_extract {ResultItem:{Slot:13b,id:"minecraft:enchanted_book",Count:1b}}

#Get the enchantments
# First for Custom Enchantments
execute if data storage teplus:tech_extract CurrentItems[{Slot:10b}].tag.CustomCurse run function technical_anvil:extraction_mode/interaction/get_enchants/custom_curses

# Then for vanilla enchantments without Custom curses
execute unless data storage teplus:tech_extract CurrentItems[{Slot:10b}].tag.CustomCurse if data storage teplus:tech_extract CurrentItems[{Slot:10b}].tag.Enchantments[0].id run function technical_anvil:extraction_mode/interaction/get_enchants/vanilla_curses

##------------DETECTING EXTRACTION HAS BEEN DONDE-------------##
execute if data storage teplus:tech_extract ResultItem.tag.StoredCustomCurse[0] run function technical_anvil:extraction_mode/interaction/create_item_succeed
execute if data storage teplus:tech_extract ResultItem.tag.StoredEnchantments[0] run function technical_anvil:extraction_mode/interaction/create_item_succeed
execute unless data storage teplus:tech_extract ResultItem.tag.StoredCustomCurse[0] unless data storage teplus:tech_extract ResultItem.tag.StoredEnchantments[0] run function technical_anvil:extraction_mode/interaction/create_item_failed


tag @s remove techanv.ext_spl