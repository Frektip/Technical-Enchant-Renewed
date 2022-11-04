data modify storage teplus:item_lore TempEnch set value []

#Store in a Temp storage all the enchantments and curses
data modify storage teplus:item_lore TempEnch append from entity @s ArmorItems[3].tag.CustomEnchantments[]
#Get the lengh from the storage using a scoreboard
execute store result score @s teplus.cencnt run data get storage teplus:item_lore TempEnch

tag @s add at_item

#Based on the item create the new/updated TE+ Lore
# This function is a loop and will directly add TE+ Lore first
function teplus_exten:spawn/give/helmet/set_lore/new_lore

tag @s remove at_item

scoreboard players reset @s teplus.single
scoreboard players reset @s teplus.tmplvl