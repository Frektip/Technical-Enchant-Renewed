#----ITEMS LIST----#
# -For bow
# -For crossbow
#-------------ENCHANT-------------#
execute if score #accshot Enchopts matches 0 if data storage teplus:tech_anvil.ench TeplusEnchantments[{id:"AccuracyShot"}] run function technical_anvil:interaction/merge/enchanted_items/accuracy_shot

