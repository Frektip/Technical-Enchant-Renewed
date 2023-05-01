###Debug Message###
tellraw @a[tag=teplus.pydbgm] ["",{"text":"TE+» ","color":"#65DAD4","bold":true},{"text":"Technical Anvil placed","color":"gray","italic":true,"bold":false}]
particle happy_villager ~ ~ ~ 0 3 0 0 100 force @a[tag=teplus.pydbgm]

#Update the block placement ID
scoreboard players add $techanv teplus.block_id 1

#Put correctly the table 

execute if score $Towards tep.avl matches 1 run function technical_anvil:place/direction/east 
execute if score $Towards tep.avl matches 2 run function technical_anvil:place/direction/south 
execute if score $Towards tep.avl matches 3 run function technical_anvil:place/direction/west 
execute if score $Towards tep.avl matches 4 run function technical_anvil:place/direction/north 

# Initialise the placed entities
data modify entity @e[type=chest_minecart,tag=teplus.technical_anvil_init,limit=1] Items set from storage teplus:tech_anvil.ui Profile
scoreboard players operation @e[type=#technical_anvil:is_table_entities,tag=teplus.technical_anvil_init] teplus.block_id = $techanv teplus.block_id

tag @e[type=#technical_anvil:is_table_entities,tag=teplus.technical_anvil_init,distance=..10] remove teplus.technical_anvil_init

# Kill the marker
kill @s