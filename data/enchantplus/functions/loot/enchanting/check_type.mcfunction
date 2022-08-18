#Enchant depending if it is a book or other item
execute if entity @s[tag=teplus.loot_is_book] run function enchantplus:loot/enchanting/system/book_main
execute if entity @s[tag=teplus.loot_is_item] run function enchantplus:loot/enchanting/system/item_main
