#This function runs if the Technical Anvil is trying to combine
# - Item with book = !"TCHA.ItwIt" tag
# - Item with the same Item type = "TCHA.ItwIt" tag
#Use the tags to copy the enchantments to an storage

#First, reset the storages
data modify storage teplus:tech_anvil.ench TeplusEnchantments set value []
data modify storage teplus:tech_anvil.ench TeplusCurses set value []
data modify storage teplus:tech_anvil.ench TeplusVanilla set value []

#Copy the enchantments and curses if the input item is a book
execute if entity @s[tag=!TCHA.ItwIt] run data modify storage teplus:tech_anvil.ench TeplusEnchantments set from storage teplus:tech_anvil.ui CurrentItems[{Slot:6b}].tag.StoredCustomEnchantments
execute if entity @s[tag=!TCHA.ItwIt] run data modify storage teplus:tech_anvil.ench TeplusCurses set from storage teplus:tech_anvil.ui CurrentItems[{Slot:6b}].tag.StoredCustomCurse
execute if entity @s[tag=!TCHA.ItwIt] run data modify storage teplus:tech_anvil.ench TeplusVanilla set from storage teplus:tech_anvil.ui CurrentItems[{Slot:6b}].tag.StoredEnchantments

#Copy the enchantments and curses if the input item is the same item type
execute if entity @s[tag=TCHA.ItwIt] run data modify storage teplus:tech_anvil.ench TeplusEnchantments set from storage teplus:tech_anvil.ui CurrentItems[{Slot:6b}].tag.CustomEnchantments
execute if entity @s[tag=TCHA.ItwIt] run data modify storage teplus:tech_anvil.ench TeplusCurses set from storage teplus:tech_anvil.ui CurrentItems[{Slot:6b}].tag.CustomCurse
execute if entity @s[tag=TCHA.ItwIt] run data modify storage teplus:tech_anvil.ench TeplusVanilla set from storage teplus:tech_anvil.ui CurrentItems[{Slot:6b}].tag.Enchantments