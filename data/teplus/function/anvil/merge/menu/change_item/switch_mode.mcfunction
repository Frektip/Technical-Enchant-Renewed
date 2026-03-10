# Since we're switching to the other mode, we need to set the UI state as default ----> without any Output
# So we remove tags and output data related to the Extract mode
tag @s remove teplus.anvil.CanExtract
tag @s remove teplus.anvil.InSlot1
tag @s remove teplus.anvil.InSlot2
data remove storage teplus:updates TAE.Output.Current

# Put Air in Slots for Extracting Mode
item replace entity @s container.10 with air
item replace entity @s container.16 with air
item replace entity @s container.13 with air

# Change the main mode tag
tag @s add teplus.anvil.extract
tag @s remove teplus.anvil.merge

# Sounds
playsound block.note_block.snare block @p ~ ~ ~ 3 2 
playsound block.note_block.snare block @p ~ ~ ~ 3 2 