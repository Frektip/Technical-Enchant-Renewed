tag @s remove tepadbx.main
tag @s add tepadbx.items


#Make some noice
playsound block.note_block.snare block @p ~ ~ ~ 3 2
playsound block.note_block.snare block @p ~ ~ ~ 3 2

#Initialize Storage
data modify block ~ ~ ~ Items set from storage teplus:admin_box Profile.Items