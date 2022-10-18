#------------ADD ENCHANT GLINT-------------#
tag @s add CanCombine
tag @s remove Error1
tag @s remove Error2
execute if data storage teplus:tech_anvil.ui ResultItem.tag.EnchCore unless data storage teplus:tech_anvil.ui ResultItem.tag.Enchantments run data merge storage teplus:tech_anvil.ui {ResultItem:{tag:{Enchantments:[{}]}}}
#-----------------ADD ITEM-----------------#
data modify storage teplus:tech_anvil.ui ResultItem.tag.Teplus.ui set value 1b
data modify entity @s Items[{Slot:22b}] set from storage teplus:tech_anvil.ui ResultItem
#---------------UPDATE LORE----------------#
data modify storage teplus:item_lore CurrentLore set from entity @s Items[{Slot:2b}].tag.display.Lore
execute if data storage teplus:tech_anvil.ui {ResultItem:{id:"minecraft:enchanted_book"}} run function #technical_anvil:edit_lore/books
execute if data storage teplus:tech_anvil.ui ResultItem.tag.CustomEnchantments run function technical_anvil:edit_lore/items
execute unless data storage teplus:tech_anvil.ui ResultItem.tag.CustomEnchantments if data storage teplus:tech_anvil.ui ResultItem.tag.CustomCurse run function technical_anvil:edit_lore/items
#------------UPDATE OTHER ITEM-------------#
data modify storage teplus:tech_anvil.ui SectionChange1 set from entity @s Items[{Slot:13b}].tag.SectionChange1
data modify storage teplus:tech_anvil.ui SectionChange2 set from entity @s Items[{Slot:13b}].tag.SectionChange2
data modify entity @s Items[{Slot:13b}].tag.SectionChange1 set from storage teplus:tech_anvil.ui SectionChange1
data modify entity @s Items[{Slot:13b}].tag.SectionChange2 set from storage teplus:tech_anvil.ui SectionChange2
#------------STORE THE OUTPUT--------------#
data modify storage teplus:tech_anvil.ui CurrentOutput set from entity @s Items[{Slot:22b}]