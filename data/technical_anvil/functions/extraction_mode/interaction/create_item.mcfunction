#-------------CREATE ITEM NBT--------------#
data merge storage teplus:tech_extract {ResultItem:{Slot:13b,id:"minecraft:enchanted_book",Count:1b}}

data modify storage teplus:tech_extract FromItem.tag.CustomEnchantments set from storage teplus:tech_extract CurrentItems[{Slot:10b}].tag.CustomEnchantments[0]


data modify storage teplus:tech_extract ResultItem.tag.StoredCustomEnchantments[] set from storage teplus:tech_extract FromItem.tag.CustomEnchantments



##------------DETECTING EXTRACTION HAS BEEN DONDE-------------##
execute if data storage teplus:tech_extract ResultItem.tag.StoredCustomEnchantments[0] run function technical_anvil:extraction_mode/interaction/create_item_succeed
execute unless data storage teplus:tech_extract ResultItem.tag.StoredCustomEnchantments[0] run function technical_anvil:extraction_mode/interaction/create_item_failed

