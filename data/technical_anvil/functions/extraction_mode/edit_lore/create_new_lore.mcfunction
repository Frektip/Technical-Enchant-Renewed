#Get the first enchantment to build the Lore line by line
data modify storage teplus:item_lore First[] set from storage teplus:item_lore TempEnch[0]

#Debug if the enchantment at level 1 doesn't display "I"
scoreboard players set @s teplus.single 0
function #technical_anvil:edit_lore/set_single_level

#Set the level number based on the score
execute store result score @s teplus.tmplvl run data get storage teplus:item_lore First[0].lvl
function technical_anvil:edit_lore/system/get_level

#Put the correct lore based on the "First" storage
function #technical_anvil:extraction_mode/set_lore_item_only

#Loop again until all enchantments and curses were covered
execute if score @s teplus.cencnt matches 1.. run data remove storage teplus:item_lore TempEnch[0]
scoreboard players remove @s teplus.cencnt 1

#In case it doesn't has any custom enchantments left-even the curses
execute unless data entity @s Items[{Slot:10b}].tag.CustomEnchantments[0].id unless data entity @s Items[{Slot:10b}].tag.CustomCurse[0].id run data remove entity @s Items[{Slot:10b}].tag.display.Lore

#Repeat if it is still greater than 1
execute if score @s teplus.cencnt matches 1.. run function technical_anvil:extraction_mode/edit_lore/create_new_lore