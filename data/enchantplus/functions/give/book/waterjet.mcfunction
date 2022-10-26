#Reset the storage
data modify storage teplus:item_lore First set value []
#Set the enchantment at level 1 by default
data modify storage teplus:item_lore First set value [{id:"Waterjet",lvl:1}]

#Set a random level value from the max level limit scoreboard
#Prepare the random value
scoreboard players set $min random 1
execute store result score $max random run scoreboard players get #wtjt teplus.maxlvl
function enchantplus:random_uniform

#Set the new level to the storage
execute store result storage teplus:item_lore First[0].lvl int 1 run scoreboard players get $out random

#Debug if the enchantment at level 1 doesn't display "I"
scoreboard players set @s teplus.single 0
function #technical_anvil:edit_lore/set_single_level

#Set the level number based on the score
execute store result score @s teplus.tmplvl run data get storage teplus:item_lore First[0].lvl
function technical_anvil:edit_lore/system/get_level

#Put the correct lore based on the "First" storage
loot spawn ~ ~ ~ loot enchantplus:enchanted_book/waterjet

#Reset
scoreboard players reset @s teplus.single
scoreboard players reset @s teplus.tmplvl