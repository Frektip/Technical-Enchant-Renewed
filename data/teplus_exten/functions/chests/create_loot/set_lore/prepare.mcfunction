#Debug if the enchantment at level 1 doesn't display "I"
scoreboard players set @s teplus.single 0
function #technical_anvil:edit_lore/set_single_level

#Set the level number based on the score
execute store result score @s teplus.tmplvl run data get storage teplus:item_lore First[0].lvl
function technical_anvil:edit_lore/system/get_level

#Store the level value to match with the custom enchantment CMD
execute store result score @s TCHA.Section1 run scoreboard players get @s teplus.tmplvl

#Set the new Lore
function #enchantplus:extra/set_lore_mainhand