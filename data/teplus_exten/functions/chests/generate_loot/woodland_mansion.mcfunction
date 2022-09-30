#Run the raycast
execute at @s anchored eyes positioned ^ ^ ^ run function teplus_exten:chests/raycast_chest 
execute at @e[type=marker,tag=teplus.ray] run function teplus_exten:chests/insert_book/woodland_mansion

kill @e[type=marker,tag=teplus.ray,limit=1,sort=nearest]