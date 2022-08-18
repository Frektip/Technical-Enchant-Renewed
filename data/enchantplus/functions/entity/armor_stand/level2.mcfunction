#Detect 12 charged bookshelves
execute if entity @e[type=marker,tag=teplus.enchanting_table,sort=nearest,tag=teplus.tier2,distance=..2] run item replace entity @s armor.head with lapis_lazuli

#Not has 12 charged bookshelves
execute if entity @e[type=marker,tag=teplus.enchanting_table,sort=nearest,tag=!teplus.tier2,distance=..2] run item replace entity @s armor.head with air
