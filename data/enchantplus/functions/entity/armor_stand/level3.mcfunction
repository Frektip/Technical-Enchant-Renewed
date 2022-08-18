#Detect 18 charged bookshelves
execute if entity @e[type=marker,tag=teplus.enchanting_table,sort=nearest,tag=teplus.tier3,distance=..2] run item replace entity @s armor.head with minecraft:lapis_lazuli

#Not has 18 charged bookshelves
execute if entity @e[type=marker,tag=teplus.enchanting_table,sort=nearest,tag=!teplus.tier3,distance=..2] run item replace entity @s armor.head with minecraft:air
