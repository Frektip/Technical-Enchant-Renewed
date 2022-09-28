#----ITEMS LIST----#
# -For horse armor
# -For leggings
#-------------ENCHANT-------------#
execute if score #rcv Enchopts matches 0 if data storage teplus:tech_anvil.ench TeplusEnchantments[{id:"Recovery"}] run function technical_anvil:interaction/merge/enchanted_items/recovery

