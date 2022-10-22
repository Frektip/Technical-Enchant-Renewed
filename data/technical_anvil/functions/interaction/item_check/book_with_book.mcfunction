tag @s add TCHA.inpbk

#Check for vanilla enchanted books, custom enchanted books and
# custom cursed books 
execute if data storage teplus:tech_anvil.ui CurrentItems[{Slot:6b}].tag.StoredCustomEnchantments if data storage teplus:tech_anvil.ui {ResultItem:{id:"minecraft:enchanted_book"}} run function #technical_anvil:interaction/item_type/book
execute if data storage teplus:tech_anvil.ui CurrentItems[{Slot:6b}].tag.StoredCustomCurse if data storage teplus:tech_anvil.ui {ResultItem:{id:"minecraft:enchanted_book"}} run function #technical_anvil:interaction/item_type/book
execute if data storage teplus:tech_anvil.ui CurrentItems[{Slot:6b}].tag.StoredEnchantments if data storage teplus:tech_anvil.ui {ResultItem:{id:"minecraft:enchanted_book"}} run function #technical_anvil:interaction/item_type/book
