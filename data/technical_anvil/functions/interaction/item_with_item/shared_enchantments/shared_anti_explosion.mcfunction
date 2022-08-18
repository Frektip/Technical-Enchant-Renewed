#----ITEMS LIST----#
# -For bow
# -For helmet
# -For horse armor
# -For sword
#-------------ENCHANT-------------#
execute if score #antexp Enchopts matches 0 if data storage teplus:tech_anvil.ui CurrentItems[{Slot:6b}].tag.CustomEnchantments[{id:"AntiExplosion"}] run function technical_anvil:interaction/merge/item_with_item/anti_explosion

