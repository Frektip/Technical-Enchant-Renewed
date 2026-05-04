# Update tags
tag @s remove teplus.admin_box.main
tag @s add teplus.admin_box.ench

# Make some noice
playsound block.note_block.snare block @p ~ ~ ~ 3 2
playsound block.note_block.snare block @p ~ ~ ~ 3 2

# Initialize Storage
data modify block ~ ~ ~ Items set value []
data modify block ~ ~ ~ Items set from storage teplus:ui Global[{profile:"admin_box"}].Enchants

# Show the first custom enchantments page
scoreboard players set @s teplus.admin_box.page 1

# Insert first group of items
scoreboard players set %loop.19 teplus.admin_box.data 0
data modify storage teplus:ui Global[{profile:"admin_box"}].Get set from storage teplus:ui Global[{profile:"admin_box"}].All
data modify storage teplus:ui Global[{profile:"admin_box"}].Build set value []

function teplus:admin/box/enchants_menu/helper/get_19

# Insert the enchantment books in the barrel
#function teplus:admin/box/enchants_menu/helper/insert

# Add UI related components to the items
data modify block ~ ~ ~ Items[{}].components merge value {"minecraft:bundle_contents":[{id:"minecraft:stick",count:64}]}
data modify block ~ ~ ~ Items[{}].components.minecraft:custom_data.teplus merge value {ui:1b}

# Add navigation buttons for the first page (there were previously set once the world loads)
data modify block ~ ~ ~ Items append from storage teplus:ui Global[{profile:"admin_box"}].Nav.Init[]

# Just in case there are missing enchantments at the first page
execute if score $extra.pg teplus.admin_box.data matches 1.. run function teplus:admin/box/enchants_menu/helper/add_blank_spaces