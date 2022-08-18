#----ITEMS LIST----#
# -For Axe
# -For Pickaxe
# -For Shovel
#-------------ENCHANT-------------#
execute if score #haste Enchopts matches 0 if data storage teplus:tech_anvil.ui CurrentItems[{Slot:6b}].tag.CustomEnchantments[{id:"Haste"}] run function technical_anvil:interaction/merge/item_with_item/haste

