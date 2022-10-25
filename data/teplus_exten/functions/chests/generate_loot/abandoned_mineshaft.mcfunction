#Run the raycast
scoreboard players reset .distance tep.rc
execute at @s anchored eyes positioned ^ ^ ^ run function teplus_exten:chests/raycast_chest_minecart

execute at @e[type=marker,tag=teplus.ray,limit=1,sort=nearest] as @e[type=chest_minecart,tag=teplus.found,limit=1,sort=nearest] run function teplus_exten:chests/insert_book/abandoned_mineshaft

#End
kill @e[type=marker,tag=teplus.ray,limit=1,sort=nearest]

scoreboard players reset .distance tep.rc