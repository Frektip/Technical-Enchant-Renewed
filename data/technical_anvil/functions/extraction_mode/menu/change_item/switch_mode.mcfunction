#Remove tags and output in case there was a successful extraction
tag @s remove CanCombine
tag @s remove InSlot1
tag @s remove InSlot2
data remove storage teplus:tech_anvil.ui CurrentOutput

#Put Air in Slots for Merging Mode
item replace entity @s container.2 with air
item replace entity @s container.6 with air

#Changing tags so it actually changes the UI
tag @s add anv.merge
tag @s remove anv.extract


#Make some noice
playsound block.note_block.snare block @p ~ ~ ~ 3 2 
playsound block.note_block.snare block @p ~ ~ ~ 3 2 
