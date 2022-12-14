data modify storage teplus:item_lore TempEnch set value []

#Remove all the Lore from the Result Item (output)
data remove entity @s Item.tag.display.Lore


#Store in a Temp storage all the enchantments and curses
data modify storage teplus:item_lore TempEnch append from entity @s Item.tag.StoredCustomEnchantments[]
data modify storage teplus:item_lore TempEnch append from entity @s Item.tag.StoredCustomCurse[]
#Get the lengh from the storage using a scoreboard
execute store result score @s teplus.cencnt run data get storage teplus:item_lore TempEnch

tag @s add at_book

#Based on the output item (result) create the new/updated TE+ Lore
# This function is a loop and will directly add TE+ Lore first
function enchantplus:loot/set_lore/create_new_lore