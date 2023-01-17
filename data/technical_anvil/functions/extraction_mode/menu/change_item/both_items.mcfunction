#------------FAILED BY DEFAULT-------------#
tag @s remove CanExtract
function technical_anvil:extraction_mode/menu/change_item/deactivate_slots

#Update the storage to get the ID's from both inputs
#data modify storage teplus:tech_anvil.ui SectionChange1 set from storage teplus:tech_anvil.ui CurrentItems[{Slot:2b}]
#data modify storage teplus:tech_anvil.ui SectionChange2 set from storage teplus:tech_anvil.ui CurrentItems[{Slot:6b}]

##-------CHECK FOR A CUSTOM ENCHANTED ITEM AND A BOOK--------##
#Check if the item has custom enchantemtns first
execute if score #extrmd game.Opts matches 0 if data storage teplus:tech_extract CurrentItems[{Slot:10b}].tag.CustomEnchantments if data storage teplus:tech_extract {CurrentItems:[{Slot:16b,id:"minecraft:book"}]} run function technical_anvil:extraction_mode/menu/with_two_items

#If the item doesn't have custom enchantments, do it for
# vanilla enchantmetns
execute if score #extrmd game.Opts matches 0 unless data storage teplus:tech_extract CurrentItems[{Slot:10b}].tag.CustomEnchantments if data storage teplus:tech_extract CurrentItems[{Slot:10b}].tag.Enchantments if data storage teplus:tech_extract {CurrentItems:[{Slot:16b,id:"minecraft:book"}]} run function technical_anvil:extraction_mode/menu/with_two_items

##-------CHECK FOR A CUSTOM ENCHANTED ITEM AND AN ISOLATED CORE--------##
#Check if the item has custom curses first
execute if data storage teplus:tech_extract CurrentItems[{Slot:10b}].tag.CustomCurse if data storage teplus:tech_extract {CurrentItems:[{Slot:16b,tag:{TeplusHead:{isolated_core:1b}}}]} run function technical_anvil:extraction_mode/menu/with_two_items

#If the item doesn't have custom curses, do it for
# vanilla curses (2 types)
execute if data storage teplus:tech_extract CurrentItems[{Slot:10b}].tag.Enchantments[{id:"minecraft:binding_curse"}] if data storage teplus:tech_extract {CurrentItems:[{Slot:16b,tag:{TeplusHead:{isolated_core:1b}}}]} run function technical_anvil:extraction_mode/menu/with_two_items
execute if data storage teplus:tech_extract CurrentItems[{Slot:10b}].tag.Enchantments[{id:"minecraft:vanishing_curse"}] if data storage teplus:tech_extract {CurrentItems:[{Slot:16b,tag:{TeplusHead:{isolated_core:1b}}}]} run function technical_anvil:extraction_mode/menu/with_two_items