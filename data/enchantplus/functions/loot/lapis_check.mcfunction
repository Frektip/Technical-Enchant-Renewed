### Debug Message ###
tellraw @a[tag=teplus.pydbgm] ["",{"text":"TE+» ","color":"#65DAD4","bold":true},{"text":"(Enchanting): ","color":"#24E3F9","italic":true,"bold":false},{"text":"Attempting to enchant in survival mode","color":"gray","italic":true,"bold":false}]
tellraw @a[tag=teplus.pydbgm] ["",{"text":"TE+» ","color":"#65DAD4","bold":true},{"text":"(Enchanting): ","color":"#24E3F9","italic":true,"bold":false},{"text":"Checking if the player has enough lapis to enchant an item!","color":"gray","italic":true,"bold":false}]

scoreboard players set $LapisCount tep.count 0 

execute store result score $HasLapis tep.count run clear @p lapis_lazuli 0 
execute if score $HasLapis tep.count matches 1.. run scoreboard players operation $LapisCount tep.count = $HasLapis tep.count 

execute if score $LapisCount tep.count matches 1.. run function #enchantplus:enchanting/items/check_item

execute unless score $LapisCount tep.count matches 1.. run tellraw @a[tag=teplus.pydbgm] ["",{"text":"TE+» ","color":"#65DAD4","bold":true},{"text":"(Enchanting): ","color":"#24E3F9","italic":true,"bold":false},{"text":"Fail! ","color":"red","italic":true,"bold":false},{"text":"The player don't have enough lapis or the item is invalid to enchant","color":"gray","italic":true,"bold":false}]