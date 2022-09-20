#This function only runs of the player throw the bookshelf on
# top of the enchanting table
### Debug Message ###
tellraw @a[tag=teplus.pydbgm] ["",{"text":"TE+» ","color":"#65DAD4","bold":true},{"text":"(Crafting): ","color":"blue","italic":true,"bold":false},{"text":"8 lapis blocks detected! Converting the item","color":"gray","italic":true,"bold":false}]
#Each Technical Anvil cost 8 lapis blocks
loot spawn ~ ~ ~ loot enchantplus:technical_anvil
particle end_rod ~ ~ ~ 0.3 0 0.2 0.07 50 
playsound entity.ender_eye.death block @a[distance=..10] ~ ~ ~ 5 0.7 
playsound entity.ender_eye.death block @a[distance=..10] ~ ~ ~ 5 0.7 
playsound entity.ender_eye.death block @a[distance=..10] ~ ~ ~ 5 0.7 

clear @p lapis_block 8
kill @s