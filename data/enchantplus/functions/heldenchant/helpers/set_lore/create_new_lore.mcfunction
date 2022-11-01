#Get the first enchantment to build the Lore line by line
data modify storage teplus:item_lore First[] set from storage teplus:item_lore TempEnch[0]

#Debug if the enchantment at level 1 doesn't display "I"
scoreboard players set @s teplus.single 0
function #technical_anvil:edit_lore/set_single_level

#Set the level number based on the score
execute store result score @s teplus.tmplvl run data get storage teplus:item_lore First[0].lvl
function technical_anvil:edit_lore/system/get_level

#Put the correct lore based on the "First" storage
function #enchantplus:extra/set_lore_mainhand

#Loop again until all enchantments and curses were covered
execute if score @s teplus.cencnt matches 1.. run data remove storage teplus:item_lore TempEnch[0]
scoreboard players remove @s teplus.cencnt 1
#Repeat if it is still greater than 1
execute if score @s teplus.cencnt matches 1.. run function enchantplus:heldenchant/helpers/set_lore/create_new_lore