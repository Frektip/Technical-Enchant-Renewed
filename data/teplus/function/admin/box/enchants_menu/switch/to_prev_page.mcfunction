# Add the update tag to prevent switching pages too early
tag @s add teplus.admin_box.update

# Make some noice
playsound block.note_block.snare block @p ~ ~ ~ 3 2
playsound block.note_block.snare block @p ~ ~ ~ 3 2

# Clear the dynamic items from Menu
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

# Remove 1 to the page scoreboard
scoreboard players remove @s teplus.admin_box.page 1

#----- Look for the new group of enchantments -----#
# Remove 19 by 19 according to the pages
# Set it to 19 by default
execute if score @s teplus.admin_box.page matches 1 run scoreboard players set %remove teplus.admin_box.data 0
execute if score @s teplus.admin_box.page matches 2.. run scoreboard players set %remove teplus.admin_box.data 19

# Multiply it by the number of pages unless it is 1
# If it is more than page 2 increment it by x19
execute if score @s teplus.admin_box.page matches 2.. run scoreboard players operation %remove teplus.admin_box.data *= @s teplus.admin_box.page

# Always remove 19 to the final result
scoreboard players remove %remove teplus.admin_box.data 19

data modify storage teplus:ui Global[{profile:"admin_box"}].Get set from storage teplus:ui Global[{profile:"admin_box"}].All
execute if score %remove teplus.admin_box.data matches 1.. run function teplus:admin/box/enchants_menu/helper/remove_for_group


#----- Insert the new group of items -----#
scoreboard players set %loop.19 teplus.admin_box.data 0
data modify storage teplus:ui Global[{profile:"admin_box"}].Build set value []

function teplus:admin/box/enchants_menu/helper/get_19

# Insert the items via loot
function teplus:admin/box/enchants_menu/helper/insert/loop

# Add UI related components to the items
data modify block ~ ~ ~ Items[{}].components merge value {"minecraft:bundle_contents":[{id:"minecraft:stick",count:64}]}
data modify block ~ ~ ~ Items[{}].components.minecraft:custom_data.teplus merge value {ui:1b}

# Add navigation buttons (detect if it is in a middle or first page)
execute if score @s teplus.admin_box.page matches 2.. if score @s teplus.admin_box.page < $page.lim teplus.admin_box.data run data modify block ~ ~ ~ Items append from storage teplus:ui Global[{profile:"admin_box"}].Nav.Mid[]
execute if score @s teplus.admin_box.page matches 1 run data modify block ~ ~ ~ Items append from storage teplus:ui Global[{profile:"admin_box"}].Nav.Init[]

# Remove storages
data remove storage teplus:ui Global[{profile:"admin_box"}].Get
data remove storage teplus:ui Global[{profile:"admin_box"}].Build