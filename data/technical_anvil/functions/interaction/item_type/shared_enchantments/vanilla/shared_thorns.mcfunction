#Check if it doesn't have other type of protection
#This prevents to stack protection enchantments
#-------------ENCHANT-------------#
execute if data storage teplus:tech_anvil.ui CurrentItems[{Slot:6b}].tag.StoredEnchantments[{id:"minecraft:thorns"}] run function teplus_exten:exceed/combine/item_book/thorns
