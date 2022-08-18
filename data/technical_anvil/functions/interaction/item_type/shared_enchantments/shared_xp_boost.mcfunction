#----ITEMS LIST----#
# -For axe
# -For trident
# -For sword
#-------------ENCHANT-------------#
execute if score #xpbt Enchopts matches 0 if data storage teplus:tech_anvil.ui CurrentItems[{Slot:6b}].tag.StoredCustomEnchantments[{id:"XpBoost"}] run function technical_anvil:interaction/merge/item_with_book/xp_boost

