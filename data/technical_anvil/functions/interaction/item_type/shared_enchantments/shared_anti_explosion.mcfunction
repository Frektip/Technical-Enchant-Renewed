#----ITEMS LIST----#
# -For bow
# -For helmet
# -For horse armor
# -For sword
#-------------ENCHANT-------------#
execute if score #antexp Enchopts matches 0 if data storage teplus:tech_anvil.ench TeplusEnchantments[{id:"AntiExplosion"}] run function technical_anvil:interaction/merge/enchanted_items/anti_explosion

