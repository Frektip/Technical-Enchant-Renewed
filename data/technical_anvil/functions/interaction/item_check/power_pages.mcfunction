tag @s add TCHA.inpbk

#Check extra for power pages for custom enchantments and curses ONLY
execute if data storage teplus:tech_anvil.ui CurrentItems[{Slot:6b}].tag.StoredCustomEnchantments if data storage teplus:tech_anvil.ui {ResultItem:{id:"minecraft:paper"}} run function #technical_anvil:interaction/item_type/book
execute if data storage teplus:tech_anvil.ui CurrentItems[{Slot:6b}].tag.StoredCustomCurse if data storage teplus:tech_anvil.ui {ResultItem:{id:"minecraft:paper"}} run function #technical_anvil:interaction/item_type/book
