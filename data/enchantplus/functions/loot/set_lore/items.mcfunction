#Store the Current item Lore
data modify storage teplus:item_lore CurrentLore set from entity @s Item.tag.display.Lore

#Remove all the Lore from the Result Item (output)
data remove entity @s Item.tag.display.Lore


#Store in a Temp storage all the enchantments and curses
data modify storage teplus:item_lore TempEnch append from entity @s Item.tag.CustomEnchantments[]
data modify storage teplus:item_lore TempEnch append from entity @s Item.tag.CustomCurse[]
#Get the lengh from the storage using a scoreboard
execute store result score @s teplus.cencnt run data get storage teplus:item_lore TempEnch

tag @s add at_item

#Based on the output item (result) create the new/updated TE+ Lore
# This function is a loop and will directly add TE+ Lore first
function enchantplus:loot/set_lore/create_new_lore


# Apply non TE+ related Lore if needed
data modify entity @s Item.tag.display.Lore append from storage teplus:item_lore CurrentLore[]