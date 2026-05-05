# Update tags
tag @s remove teplus.admin_box.custom
tag @s add teplus.admin_box.vanilla

# Reset scoreboard page number
scoreboard players reset @s teplus.admin_box.page

# Make some noice
playsound block.note_block.snare block @p ~ ~ ~ 3 2
playsound block.note_block.snare block @p ~ ~ ~ 3 2

# Modify Block items
data modify block ~ ~ ~ Items append from storage teplus:ui Global[{profile:"admin_box"}].Vanilla[]