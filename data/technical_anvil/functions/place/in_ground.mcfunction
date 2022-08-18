#Put correctly the table 

execute if score $Towards tep.avl matches 1 run function technical_anvil:place/direction/east 
execute if score $Towards tep.avl matches 2 run function technical_anvil:place/direction/south 
execute if score $Towards tep.avl matches 3 run function technical_anvil:place/direction/west 
execute if score $Towards tep.avl matches 4 run function technical_anvil:place/direction/north 

# Initialise the placed entities
data modify entity @e[type=chest_minecart,tag=teplus.technical_anvil_init,limit=1] Items set from storage teplus:tech_anvil.ui Profile
#execute as @e[type=#technical_anvil:is_table_entities,tag=teplus.technical_anvil_init,distance=..10] run scoreboard players operation @s PKHeadId = %pk_head_next_id PKHeadId
tag @e[type=#technical_anvil:is_table_entities,tag=teplus.technical_anvil_init,distance=..10] remove teplus.technical_anvil_init

# Kill the marker
kill @s