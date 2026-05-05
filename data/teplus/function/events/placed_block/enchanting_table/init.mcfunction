#Revoke advancement
advancement revoke @s only teplus:events/placed_enchanting_table

#Start the raycast to locate the placed enchanting table
execute at @s anchored eyes positioned ^ ^ ^ run function teplus:events/placed_block/enchanting_table/raycast

#A marker is summoned where the block was placed (in theory) 
execute as @e[type=marker,tag=teplus.ray] at @s run function teplus:events/placed_block/enchanting_table/set_marker