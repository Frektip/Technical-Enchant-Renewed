###Debug Message###
tellraw @a[tag=teplus.pydbgm] ["",{"text":"TE+» ","color":"#65DAD4","bold":true},{"text":"Placed a charged bookshelf, link a marker to it","color":"gray","italic":true,"bold":false}]
particle happy_villager ~ ~ ~ 0 3 0 0 100 force @a[tag=teplus.pydbgm]

#Update the block placement ID
scoreboard players add $current teplus.block_id 1

execute summon marker run function enchantplus:enchanting_table/charged_bookshelf/place/marker

#Summon item display
execute if score #tslpm game.Opts matches 1 positioned ~ ~1 ~ summon item_display run function enchantplus:enchanting_table/charged_bookshelf/place/display

#Kill marker
kill @s