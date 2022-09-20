###Debug Message###
tellraw @a[tag=teplus.pydbgm] ["",{"text":"TE+» ","color":"#65DAD4","bold":true},{"text":"Bookshelf removed, killing marker entity","color":"gray","italic":true,"bold":false}]
tellraw @a[tag=teplus.pydbgm] ["",{"text":"TE+» ","color":"#65DAD4","bold":true},{"text":"Dropping a charged bookshelf item if in survival","color":"gray","italic":true,"bold":false}]

#Kill any items, like the bookshelf, books or planks
kill @e[type=item,distance=..1]

#Give back the charged bookshelf to the player only if he is in survival
execute unless entity @p[gamemode=creative] run loot spawn ~ ~ ~ loot enchantplus:charged_bookshelf
kill @s