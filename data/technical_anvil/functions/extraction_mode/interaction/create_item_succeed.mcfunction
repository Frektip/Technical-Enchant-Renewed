#------------ADD ENCHANT GLINT-------------#
tag @s add CanExtract
tag @s remove Error1
tag @s remove Error2

#-----------------ADD ITEM-----------------#
data modify storage teplus:tech_extract ResultItem.tag.Teplus.ui set value 1b
data modify entity @s Items[{Slot:13b}] set from storage teplus:tech_extract ResultItem
#---------------UPDATE LORE----------------#
# Only for Custom Enchanted books
data modify storage teplus:item_lore TempEnch set value []
execute unless data storage teplus:tech_extract ResultItem.tag.StoredEnchantments run function technical_anvil:extraction_mode/edit_lore/books

#------------UPDATE OTHER ITEM-------------#
data modify storage teplus:tech_extract SectionChange1 set from entity @s Items[{Slot:22b}].tag.SectionChange1
data modify storage teplus:tech_extract SectionChange2 set from entity @s Items[{Slot:22b}].tag.SectionChange2
data modify entity @s Items[{Slot:22b}].tag.SectionChange1 set from storage teplus:tech_extract SectionChange1
data modify entity @s Items[{Slot:22b}].tag.SectionChange2 set from storage teplus:tech_extract SectionChange2
#------------STORE THE OUTPUT--------------#
data modify storage teplus:tech_extract CurrentOutput set from entity @s Items[{Slot:13b}]