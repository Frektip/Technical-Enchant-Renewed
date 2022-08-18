#----ITEMS LIST----#
# -For chestplate
# -For horse armor
#-------------ENCHANT-------------#
execute if score #antvn Enchopts matches 0 if data storage teplus:tech_anvil.ui CurrentItems[{Slot:6b}].tag.CustomEnchantments[{id:"AntiVenom"}] run function technical_anvil:interaction/merge/item_with_item/anti_venom

