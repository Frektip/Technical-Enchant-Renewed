#----ITEMS LIST----#
# -For boots
# -For horse armor
#-------------ENCHANT-------------#
execute if score #lvwk Enchopts matches 0 if data storage teplus:tech_anvil.ui CurrentItems[{Slot:6b}].tag.CustomEnchantments[{id:"LavaWalker"}] run function technical_anvil:interaction/merge/item_with_item/lava_walker

