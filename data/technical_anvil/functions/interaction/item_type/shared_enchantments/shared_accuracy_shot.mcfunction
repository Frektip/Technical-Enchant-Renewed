#----ITEMS LIST----#
# -For bow
# -For crossbow
#-------------ENCHANT-------------#
execute if score #accshot Enchopts matches 0 if data storage teplus:tech_anvil.ui CurrentItems[{Slot:6b}].tag.StoredCustomEnchantments[{id:"AccuracyShot"}] run function technical_anvil:interaction/merge/item_with_book/accuracy_shot

