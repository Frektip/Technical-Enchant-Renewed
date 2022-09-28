#----ITEMS LIST----#
# -For Axe
# -For Pickaxe
# -For Shovel
#-------------ENCHANT-------------#
execute if score #haste Enchopts matches 0 if data storage teplus:tech_anvil.ench TeplusEnchantments[{id:"Haste"}] run function technical_anvil:interaction/merge/enchanted_items/haste

