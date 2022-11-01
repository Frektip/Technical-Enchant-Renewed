data modify storage teplus:item_lore TempEnch set value []
data modify storage teplus:item_lore First set value []

#Remove all the Lore from the Result Item (output)
data remove entity @s Items[{Slot:22b}].tag.display.Lore

item modify entity @s container.22 technical_anvil:set_lore/page_of_power_tooltip

#Store in a Temp storage all the enchantments and curses
data modify storage teplus:item_lore TempEnch append from entity @s Items[{Slot:22b}].tag.StoredCustomEnchantments[]
data modify storage teplus:item_lore TempEnch append from entity @s Items[{Slot:22b}].tag.StoredCustomCurse[]
#Get the lengh from the storage using a scoreboard
execute store result score @s teplus.cencnt run data get storage teplus:item_lore TempEnch

tag @s add at_book

#Based on the output item (result) create the new/updated TE+ Lore
# This function is a loop and will directly add TE+ Lore first
function technical_anvil:edit_lore/system/create_new_lore

tag @s remove at_book
tag @s remove teplus.loot_1ench

#Add No.xpcom tag, so the xp requirement isn't as high as the 
# normal one
tag @s add No.xpcomb