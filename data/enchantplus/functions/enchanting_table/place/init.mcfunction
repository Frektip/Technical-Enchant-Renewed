advancement revoke @s only enchantplus:placed_enchanting_table

#Run Iris, so we have the exact spot where the player place the block 
execute at @s anchored eyes positioned ^ ^ ^ run function enchantplus:enchanting_table/place/raycast

#This Iris marker is where we placed the block (in theory) 
execute as @e[type=marker,tag=teplus.ray] at @s run function enchantplus:enchanting_table/place/set_marker