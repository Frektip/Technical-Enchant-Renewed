#Search for custom enchanted books
execute if entity @s[nbt={Item:{id:"minecraft:enchanted_book",tag:{StoredCustomEnchantments:[{}]}}}] run function enchantplus:disenchant/book

#Search for custom enchanted items
execute if entity @s[nbt={Item:{tag:{CustomEnchantments:[{}]}}}] run function enchantplus:disenchant/item