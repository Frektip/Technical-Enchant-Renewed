#Check if it doesn't have other type of protection
#This prevents to stack protection enchantments
#-------------ENCHANT-------------#
execute unless data storage teplus:tech_anvil.ui {ResultItem:{tag:{Enchantments:[{id:"minecraft:projectile_protection"}]}}} unless data storage teplus:tech_anvil.ui {ResultItem:{tag:{Enchantments:[{id:"minecraft:fire_protection"}]}}} unless data storage teplus:tech_anvil.ui {ResultItem:{tag:{Enchantments:[{id:"minecraft:blast_protection"}]}}} if data storage teplus:tech_anvil.ui CurrentItems[{Slot:6b}].tag.StoredEnchantments[{id:"minecraft:protection"}] run function teplus_exten:exceed/combine/item_book/protection
