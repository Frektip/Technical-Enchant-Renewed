#------------ADD ENCHANT GLINT-------------#
tag @s add CanCombine
tag @s remove Error1
tag @s remove Error2
execute if data storage teplus:tech_anvil.ui ResultItem.tag.EnchCore unless data storage teplus:tech_anvil.ui ResultItem.tag.Enchantments run data merge storage teplus:tech_anvil.ui {ResultItem:{tag:{Enchantments:[{}]}}}
#-----------------ADD ITEM-----------------#
data modify storage teplus:tech_anvil.ui ResultItem.tag.Teplus.ui set value 1b
data modify entity @s Items[{Slot:22b}] set from storage teplus:tech_anvil.ui ResultItem
#---------------UPDATE LORE----------------#
# Any other item
execute unless data storage teplus:tech_anvil.ui {ResultItem:{id:"minecraft:enchanted_book"}} unless data storage teplus:tech_anvil.ui {ResultItem:{tag:{TeplusPower_page:1b}}} run function technical_anvil:edit_lore/items
# Just for enchanted books
execute if data storage teplus:tech_anvil.ui {ResultItem:{id:"minecraft:enchanted_book"}} run function technical_anvil:edit_lore/books
# Just for Pages of Power
execute if data storage teplus:tech_anvil.ui {ResultItem:{tag:{TeplusPower_page:1b}}} run function technical_anvil:edit_lore/power_pages
# Just for Experience Crystal
execute if data storage teplus:tech_anvil.ui {ResultItem:{tag:{Teplus_xp_crystal:1b}}} run item modify entity @s container.22 technical_anvil:experience_crystal_lore

#------------UPDATE OTHER ITEM-------------#
data modify storage teplus:tech_anvil.ui SectionChange1 set from entity @s Items[{Slot:13b}].tag.SectionChange1
data modify storage teplus:tech_anvil.ui SectionChange2 set from entity @s Items[{Slot:13b}].tag.SectionChange2
data modify entity @s Items[{Slot:13b}].tag.SectionChange1 set from storage teplus:tech_anvil.ui SectionChange1
data modify entity @s Items[{Slot:13b}].tag.SectionChange2 set from storage teplus:tech_anvil.ui SectionChange2
#------------STORE THE OUTPUT--------------#
data modify storage teplus:tech_anvil.ui CurrentOutput set from entity @s Items[{Slot:22b}]