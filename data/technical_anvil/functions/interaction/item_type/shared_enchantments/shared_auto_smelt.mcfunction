#----ITEMS LIST----#
# -For Axe
# -For Pickaxe
# -For Shovel
#-------------ENCHANT-------------#
execute if score #autsml Enchopts matches 0 if data storage teplus:tech_anvil.ench TeplusEnchantments[{id:"AutoSmelt"}] run function technical_anvil:interaction/merge/enchanted_items/auto_smelt

