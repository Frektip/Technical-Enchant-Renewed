###Debug###
tellraw @a[tag=teplus.debug_mode] [{"text":"TE+» ","color":"#65DAD4","bold":true},{"text":"Placed a charged bookshelf, link a marker to it","color":"gray","italic":true,"bold":false}]
particle happy_villager ~ ~ ~ 0 3 0 0 100 force @a[tag=teplus.debug_mode]

#Update the block placement ID
scoreboard players add $current teplus.block_id 1

execute summon marker run function teplus:events/placed_block/charged_bookshelf/set_marker

#Summon item display
execute positioned ~ ~1 ~ summon item_display run function teplus:events/placed_block/charged_bookshelf/link_display

#Kill raycast marker
kill @s