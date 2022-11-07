tag @s add update

#Make some noice
playsound block.note_block.snare block @p ~ ~ ~ 3 2
playsound block.note_block.snare block @p ~ ~ ~ 3 2

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

#Remove 1 to the page scoreboard
scoreboard players remove @s TADBX.Page 1

#Look for the new group of enchantments
#Remove 19 by 19 according to the pages
#Set it to 19 by default
execute if score @s TADBX.Page matches 1 run scoreboard players set %remove TADBX.data 0
execute if score @s TADBX.Page matches 2.. run scoreboard players set %remove TADBX.data 19
#Multiply it by the number of pages unless it is 1
#If it is more than page 2 increment it by x19
execute if score @s TADBX.Page matches 2.. run scoreboard players operation %remove TADBX.data *= @s TADBX.Page

#Always remove 19 to the final result
scoreboard players remove %remove TADBX.data 19

data modify storage teplus:admin_box Get set from storage teplus:admin_box All
execute if score %remove TADBX.data matches 1.. run function teplus_admin_box:enchant_menu/helper/remove_for_group


#Insert the new group of items
scoreboard players set %loop.19 TADBX.data 0
data modify storage teplus:admin_box Build set value []

function teplus_admin_box:enchant_menu/helper/get_19

#Insert the items via loot
data modify storage teplus:item_lore First set value []
function teplus_admin_box:enchant_menu/helper/insert

#Add the Teplus.UI nbt tag
function teplus_admin_box:enchant_menu/helper/set_ui_nbt


#Add navigation buttons (detect if it is in a middle or first page)
execute if score @s TADBX.Page matches 2.. if score @s TADBX.Page < $page.lim TADBX.data run data modify block ~ ~ ~ Items append from storage teplus:admin_box Profile.NavMid[]
execute if score @s TADBX.Page matches 1 run data modify block ~ ~ ~ Items append from storage teplus:admin_box Profile.NavInit[]