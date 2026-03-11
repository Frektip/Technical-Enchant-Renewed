# Since we're switching to the other mode, we need to set the UI state as default ----> without any Output
# So we remove tags and output data related to the Merge mode
tag @s remove teplus.anvil.CanMerge
tag @s remove teplus.anvil.InSlot1
tag @s remove teplus.anvil.InSlot2
data remove storage teplus:updates TAM.Output.Current

# Put Air in Slots for Merge Mode
item replace entity @s container.2 with air
item replace entity @s container.6 with air
item replace entity @s container.22 with air

# Change the main mode tag
tag @s add teplus.anvil.merge
tag @s remove teplus.anvil.extract

# Sounds
playsound block.note_block.snare block @p ~ ~ ~ 3 2 
playsound block.note_block.snare block @p ~ ~ ~ 3 2 