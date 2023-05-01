###Debug Message###
tellraw @a[tag=teplus.pydbgm] ["",{"text":"TE+» ","color":"#65DAD4","bold":true},{"text":"Placed an Admin Box, link a marker to it","color":"gray","italic":true,"bold":false}]
particle happy_villager ~ ~ ~ 0 3 0 0 100 force @a[tag=teplus.pydbgm]

#Update the block placement ID
scoreboard players add $adminbox teplus.block_id 1

#Summon a marker
execute summon marker run function teplus_admin_box:events/placed/add_marker

#Add decorative things
#Base Model
execute positioned ~ ~1 ~ summon item_display run function teplus_admin_box:events/placed/decorative/base

#Top Books
execute positioned ~ ~1 ~ summon item_display run function teplus_admin_box:events/placed/decorative/books


#Side Lapis
execute positioned ~ ~1 ~ summon item_display run function teplus_admin_box:events/placed/decorative/lapis
