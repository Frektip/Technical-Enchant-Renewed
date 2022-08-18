#This function only runs of the player throw the bookshelf on
# top of the enchanting table

#Each Technical Anvil cost 8 lapis blocks
loot spawn ~ ~ ~ loot enchantplus:technical_anvil
particle minecraft:end_rod ~ ~ ~ 0.3 0 0.2 0.07 50 
playsound minecraft:entity.ender_eye.death block @a[distance=..10] ~ ~ ~ 5 0.7 
playsound minecraft:entity.ender_eye.death block @a[distance=..10] ~ ~ ~ 5 0.7 
playsound minecraft:entity.ender_eye.death block @a[distance=..10] ~ ~ ~ 5 0.7 

clear @p minecraft:lapis_block 8
kill @s