#----ITEMS LIST----#
# -All armor items, including shield and horse armor
#-------------ENCHANT-------------#
execute if data storage teplus:tech_anvil.ui CurrentItems[{Slot:6b}].tag.StoredCustomCurse[{id:"Sensitive"}] run function technical_anvil:interaction/merge/item_with_item/sensitive

