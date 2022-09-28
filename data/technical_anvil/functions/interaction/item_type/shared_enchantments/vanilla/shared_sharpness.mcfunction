#Check if it doesn't have other type of incompatible sharpness enchantments
#This prevents to stack these types of enchantments
#-------------ENCHANT-------------#
execute unless data storage teplus:tech_anvil.ui {ResultItem:{tag:{Enchantments:[{id:"minecraft:smite"}]}}} unless data storage teplus:tech_anvil.ui {ResultItem:{tag:{Enchantments:[{id:"minecraft:bane_of_arthropods"}]}}} unless data storage teplus:tech_anvil.ui {ResultItem:{tag:{Enchantments:[{id:"minecraft:impaling"}]}}} if data storage teplus:tech_anvil.ench TeplusVanilla[{id:"minecraft:sharpness"}] run function teplus_exten:exceed/combine/items/sharpness

