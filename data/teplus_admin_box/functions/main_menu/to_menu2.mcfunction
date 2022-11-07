tag @s remove tepadbx.main
tag @s add tepadbx.ench


#Make some noice
playsound block.note_block.snare block @p ~ ~ ~ 3 2
playsound block.note_block.snare block @p ~ ~ ~ 3 2

#Initialize Storage
data modify block ~ ~ ~ Items append from storage teplus:admin_box Profile.Ench[]

#Clear the items from Menu
data remove block ~ ~ ~ Items[{Slot:2b}]
data remove block ~ ~ ~ Items[{Slot:3b}]
data remove block ~ ~ ~ Items[{Slot:4b}]
data remove block ~ ~ ~ Items[{Slot:5b}]
data remove block ~ ~ ~ Items[{Slot:6b}]
data remove block ~ ~ ~ Items[{Slot:7b}]
data remove block ~ ~ ~ Items[{Slot:8b}]
data remove block ~ ~ ~ Items[{Slot:11b}]
data remove block ~ ~ ~ Items[{Slot:12b}]
data remove block ~ ~ ~ Items[{Slot:13b}]
data remove block ~ ~ ~ Items[{Slot:14b}]
data remove block ~ ~ ~ Items[{Slot:15b}]
data remove block ~ ~ ~ Items[{Slot:16b}]
data remove block ~ ~ ~ Items[{Slot:17b}]
data remove block ~ ~ ~ Items[{Slot:20b}]
data remove block ~ ~ ~ Items[{Slot:21b}]
data remove block ~ ~ ~ Items[{Slot:22b}]
data remove block ~ ~ ~ Items[{Slot:23b}]
data remove block ~ ~ ~ Items[{Slot:24b}]
data remove block ~ ~ ~ Items[{Slot:25b}]
data remove block ~ ~ ~ Items[{Slot:26b}]

#Set default page to 1
scoreboard players set @s TADBX.Page 1

#Insert first group of items
scoreboard players set %loop.19 TADBX.data 0
data modify storage teplus:admin_box Get set from storage teplus:admin_box All
data modify storage teplus:admin_box Build set value []

function teplus_admin_box:enchant_menu/helper/get_19

#Insert the items via loot
data modify storage teplus:item_lore First set value []
function teplus_admin_box:enchant_menu/helper/insert

#Add the Teplus.UI nbt tag
function teplus_admin_box:enchant_menu/helper/set_ui_nbt


#Add navigation buttons (there are set once the world Loads)
data modify block ~ ~ ~ Items append from storage teplus:admin_box Profile.NavInit[]

#Just in case there are missing enchantments at the first page
execute if score $extra.pg TADBX.data matches 1.. run function teplus_admin_box:enchant_menu/helper/add_blank_spaces