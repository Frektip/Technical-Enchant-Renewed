#Detect the enchantments and curses
execute if entity @s[nbt={Items:[{Slot:2b,tag:{CustomEnchantments:[{}]}}]}] run function #technical_anvil:edit_lore/items_loop
execute if entity @s[nbt={Items:[{Slot:2b,tag:{CustomCurse:{}}}]}] run function #technical_anvil:edit_lore/items_loop

#Remove the Current Lore of the item and set the new Lore in the data storage
data remove entity @s Items[{Slot:22b}].tag.display.Lore
function #technical_anvil:edit_lore/set_enchantments

#Clean things in the data storage for more than lvl I enchantments
execute if data storage teplus:item_lore CurrentLore[0] run function #technical_anvil:edit_lore/correct_level

#Put the new item Lore from the storage, FINAL DISPLAY
data modify entity @s Items[{Slot:22b}].tag.display.Lore append from storage teplus:item_lore CurrentLore[]
