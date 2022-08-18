#This function only runs of the player throw the bookshelf on
# top of the enchanting table

#Each Charged bookshelf cost 8 lapis
loot spawn ~ ~ ~ loot enchantplus:charged_bookshelf
particle minecraft:enchant ~ ~1 ~ 0.1 1 0.1 0.3 500
playsound minecraft:block.enchantment_table.use master @a[distance=..6] ~ ~ ~ 100
clear @p minecraft:lapis_lazuli 8
kill @s