### Debug Message ###
tellraw @a[tag=teplus.pydbgm] ["",{"text":"TE+» ","color":"#65DAD4","bold":true},{"text":"(Crafting): ","color":"blue","italic":true,"bold":false},{"text":"Checking if the player has the materials to craft a charged bookshelf","color":"gray","italic":true,"bold":false}]

scoreboard players set $LapisCount tep.count 0 

execute store result score $HasLapis tep.count run clear @p lapis_lazuli 0 
execute if score $HasLapis tep.count matches 1.. run scoreboard players operation $LapisCount tep.count = $HasLapis tep.count 

execute if score $LapisCount tep.count matches 8.. run function enchantplus:enchanting_table/charged_bookshelf/get/success

execute unless score $LapisCount tep.count matches 8.. run tellraw @a[tag=teplus.pydbgm] ["",{"text":"TE+» ","color":"#65DAD4","bold":true},{"text":"(Crafting): ","color":"blue","italic":true,"bold":false},{"text":"Player doesn't have enough lapis to craft a charged bookshelf","color":"gray","italic":true,"bold":false}]