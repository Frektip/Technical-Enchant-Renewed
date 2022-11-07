tag @s remove tepadbx.custom
tag @s remove tepadbx.pages
tag @s add tepadbx.vanilla


#Make some noice
playsound block.note_block.snare block @p ~ ~ ~ 3 2
playsound block.note_block.snare block @p ~ ~ ~ 3 2

#Modify Block items
data modify block ~ ~ ~ Items append from storage teplus:admin_box Profile.Vanilla[]