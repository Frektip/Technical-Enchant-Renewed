#-------------CREATE ITEM NBT--------------#
data merge storage teplus:tech_extract {ResultItem:{Slot:13b,id:"minecraft:enchanted_book",Count:1b}}

#Get the enchantments
# First for Custom Enchantments
execute if data storage teplus:tech_extract CurrentItems[{Slot:10b}].tag.CustomEnchantments run function technical_anvil:extraction_mode/interaction/get_enchants/custom_enchantments

# Then for vanilla enchantments without Custom curses
execute unless data storage teplus:tech_extract CurrentItems[{Slot:10b}].tag.CustomEnchantments if data storage teplus:tech_extract CurrentItems[{Slot:10b}].tag.Enchantments[0].id run function technical_anvil:extraction_mode/interaction/get_enchants/vanilla_enchantments



##------------DETECTING EXTRACTION HAS BEEN DONDE-------------##
execute if data storage teplus:tech_extract ResultItem.tag.StoredCustomEnchantments[0] run function technical_anvil:extraction_mode/interaction/create_item_succeed
execute if data storage teplus:tech_extract ResultItem.tag.StoredEnchantments[0] run function technical_anvil:extraction_mode/interaction/create_item_succeed
execute unless data storage teplus:tech_extract ResultItem.tag.StoredCustomEnchantments[0] unless data storage teplus:tech_extract ResultItem.tag.StoredEnchantments[0] run function technical_anvil:extraction_mode/interaction/create_item_failed

tag @s remove teplus.vancurse_limit