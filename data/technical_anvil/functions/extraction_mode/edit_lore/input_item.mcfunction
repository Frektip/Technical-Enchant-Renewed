# Remove all the Lore and update just the custom enchantment part
data remove entity @s Items[{Slot:10b}].tag.display.Lore
#function #technical_anvil:extraction_mode/refresh_enchantments

#Store in a Temp storage all the enchantments and curses
data modify storage teplus:item_lore TempEnch append from entity @s Items[{Slot:10b}].tag.CustomEnchantments[]
data modify storage teplus:item_lore TempEnch append from entity @s Items[{Slot:10b}].tag.CustomCurse[]
#Get the lengh from the storage using a scoreboard
execute store result score @s teplus.cencnt run data get storage teplus:item_lore TempEnch

tag @s add at_item

#Based on the output item (result) create the new/updated TE+ Lore
# This function is a loop and will directly add TE+ Lore first
function technical_anvil:extraction_mode/edit_lore/create_new_lore


# In case the Item has anther custom Lore, append it from the "ExtractLore" storage from earlyer
data modify entity @s Items[{Slot:10b}].tag.display.Lore append from storage teplus:item_lore ExtractLore[]

tag @s remove at_item