tag @s remove tepadbx.ench
tag @s remove tepadbx.custom
tag @s remove tepadbx.vanilla
tag @s remove tepadbx.pages
tag @s add tepadbx.main


#Make some noice
playsound block.note_block.snare block @p ~ ~ ~ 3 2
playsound block.note_block.snare block @p ~ ~ ~ 3 2

#Initialize Storage
data modify block ~ ~ ~ Items set from storage teplus:admin_box Profile.Main
