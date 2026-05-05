# Update tags
tag @s remove teplus.admin_box.main
tag @s add teplus.admin_box.items

# Make some noice
playsound block.note_block.snare block @p ~ ~ ~ 3 2
playsound block.note_block.snare block @p ~ ~ ~ 3 2

# Initialize Storage
data modify block ~ ~ ~ Items set value []
data modify block ~ ~ ~ Items set from storage teplus:ui Global[{profile:"admin_box"}].Items

# Insert custom items
loot insert ~ ~ ~ loot teplus:items/guide_book
loot insert ~ ~ ~ loot teplus:items/charged_bookshelf
loot insert ~ ~ ~ loot teplus:items/birthday_potion
loot insert ~ ~ ~ loot teplus:items/technical_anvil
loot insert ~ ~ ~ loot teplus:items/polished_lapis
loot insert ~ ~ ~ loot teplus:items/isolated_core
loot insert ~ ~ ~ loot teplus:items/blessed_orb

# Xp Crystal needs previous config to be created (max tier possible)
function teplus:admin/box/items_menu/callbacks/xp_crystal_prepare

loot insert ~ ~ ~ loot teplus:items/xp_crystal

function teplus:admin/box/items_menu/callbacks/xp_crystal_clear

# Finally add "admin box" item
loot insert ~ ~ ~ loot teplus:items/admin_box

# Add UI related components to the items
data modify block ~ ~ ~ Items[{}].components merge value {"minecraft:bundle_contents":[{id:"minecraft:stick",count:64}]}
data modify block ~ ~ ~ Items[{}].components.minecraft:custom_data.teplus merge value {ui:1b}