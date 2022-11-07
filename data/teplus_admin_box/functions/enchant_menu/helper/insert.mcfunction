#Set the enchantment at level 1 by default
data modify storage teplus:item_lore First[] set from storage teplus:admin_box Build[0]

#Debug if the enchantment at level 1 doesn't display "I"
scoreboard players set @s teplus.single 0
function #technical_anvil:edit_lore/set_single_level

#Set the level number based on the score
execute store result score @s teplus.tmplvl run data get storage teplus:item_lore First[0].lvl
function technical_anvil:edit_lore/system/get_level

#Spawn the new enchantment based on the storage
function #enchantplus:extra/insert_in_admin_box

#Repeat untill all the enchantments have been covered
data remove storage teplus:admin_box Build[0]
execute if data storage teplus:admin_box Build[0].id run function teplus_admin_box:enchant_menu/helper/insert