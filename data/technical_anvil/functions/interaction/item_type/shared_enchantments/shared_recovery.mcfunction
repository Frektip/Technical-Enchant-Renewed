#----ITEMS LIST----#
# -For horse armor
# -For leggings
#-------------ENCHANT-------------#
execute if score #rcv Enchopts matches 0 if data storage teplus:tech_anvil.ui CurrentItems[{Slot:6b}].tag.StoredCustomEnchantments[{id:"Recovery"}] run function technical_anvil:interaction/merge/item_with_book/recovery

