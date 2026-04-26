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
data modify storage teplus:xp_crystal Build set value {}
data modify storage teplus:xp_crystal Build.Tier set value 5
data modify storage teplus:xp_crystal Build.Value set value [1450,1450]

scoreboard players set #teplus.xptier teplus.data 5
scoreboard players set #teplus.xpvalue teplus.data 1450
scoreboard players set #teplus.xpmax teplus.data 1450

loot insert ~ ~ ~ loot teplus:items/xp_crystal
data remove storage teplus:xp_crystal Build
scoreboard players reset #teplus.xptier teplus.data
scoreboard players reset #teplus.xpvalue teplus.data
scoreboard players reset #teplus.xpmax teplus.data

# Finally add "admin box" item
loot insert ~ ~ ~ loot teplus:items/admin_box

# Add UI related components to the items
data modify block ~ ~ ~ Items[{}].components merge value {"minecraft:bundle_contents":[{id:"minecraft:stick",count:64}]}
data modify block ~ ~ ~ Items[{}].components.minecraft:custom_data.teplus merge value {ui:1b}