# Update tags
tag @s remove teplus.admin_box.ench
tag @s remove teplus.admin_box.custom
tag @s remove teplus.admin_box.vanilla
tag @s remove teplus.admin_box.pages
tag @s add teplus.admin_box.main

# Make some noice
playsound block.note_block.snare block @p ~ ~ ~ 3 2
playsound block.note_block.snare block @p ~ ~ ~ 3 2

# Initialize Storage
data modify block ~ ~ ~ Items set from storage teplus:ui Global[{profile:"admin_box"}].Main

# Remove Book storage
data remove storage teplus:ui Global[{profile:"admin_box"}].Books