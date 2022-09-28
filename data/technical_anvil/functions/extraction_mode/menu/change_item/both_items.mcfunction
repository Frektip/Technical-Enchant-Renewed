#------------FAILED BY DEFAULT-------------#
tag @s remove CanExtract
function technical_anvil:extraction_mode/menu/change_item/deactivate_slots
##-------CHECK FOR A CUSTOM ENCHANTED ITEM AND A BOOK--------#
#Check if the item has custom enchantemtns first
execute if score #extrmd game.Opts matches 0 if data storage teplus:tech_extract CurrentItems[{Slot:10b}].tag.CustomEnchantments if data storage teplus:tech_extract {CurrentItems:[{Slot:16b,id:"minecraft:book"}]} run function technical_anvil:extraction_mode/menu/with_two_items

#If the item doesn't have custom enchantments, do it for
# vanilla enchantmetns
execute if score #extrmd game.Opts matches 0 unless data storage teplus:tech_extract CurrentItems[{Slot:10b}].tag.CustomEnchantments if data storage teplus:tech_extract CurrentItems[{Slot:10b}].tag.Enchantments if data storage teplus:tech_extract {CurrentItems:[{Slot:16b,id:"minecraft:book"}]} run function technical_anvil:extraction_mode/menu/with_two_items
