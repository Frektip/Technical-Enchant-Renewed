#Remove all the Lore from the Result Item (output)
data remove entity @s Items[{Slot:13b}].tag.display.Lore

#Get the first enchantment to build the Lore line by line
data modify storage teplus:item_lore First[] set from entity @s[nbt={Items:[{Slot:13b,tag:{StoredCustomEnchantments:[{}]}}]}] Items[{Slot:13b}].tag.StoredCustomEnchantments[]
data modify storage teplus:item_lore First[] set from entity @s[nbt={Items:[{Slot:13b,tag:{StoredCustomCurse:[{}]}}]}] Items[{Slot:13b}].tag.StoredCustomCurse[]

#Debug if the enchantment at level 1 doesn't display "I"
scoreboard players set @s teplus.single 0
function technical_anvil:edit_lore/system/single_level

#Set the level number based on the score
execute store result score @s teplus.tmplvl run data get storage teplus:item_lore First[0].lvl
function technical_anvil:edit_lore/system/get_level

#Put the correct lore based on the "First" storage
tag @s add at_book
tag @s add teplus.loot_1ench
function technical_anvil:extraction_mode/edit_lore/set_lore_books

tag @s remove at_book
tag @s remove teplus.loot_1ench