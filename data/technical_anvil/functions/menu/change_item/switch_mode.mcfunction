#Remove tags and output in case there was a successful combination
tag @s remove CanExtract
tag @s remove InSlot1
tag @s remove InSlot2
data remove storage teplus:tech_extract CurrentOutput

#Put Air in Slots for Extracting Mode
item replace entity @s container.10 with air
item replace entity @s container.16 with air

#Changing tags so it actually changes the UI
tag @s add anv.extract
tag @s remove anv.merge

#Make some noice
playsound minecraft:block.note_block.snare block @p ~ ~ ~ 3 2 
playsound minecraft:block.note_block.snare block @p ~ ~ ~ 3 2 

#Grant advancement to the nearest player
execute as @p[advancements={enchantplus:progress/start/extracting_mode=false},distance=..6] run advancement grant @s only enchantplus:progress/start/extracting_mode 
