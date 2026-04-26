# Update tags
tag @s remove teplus.admin_box.main
tag @s add teplus.admin_box.items

# Make some noice
playsound block.note_block.snare block @p ~ ~ ~ 3 2
playsound block.note_block.snare block @p ~ ~ ~ 3 2

# Initialize Storage
data modify block ~ ~ ~ Items set from storage teplus:ui Global[{profile:"admin_box"}].Items