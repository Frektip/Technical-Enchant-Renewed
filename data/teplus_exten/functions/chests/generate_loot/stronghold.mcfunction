#Init Iris raycast

#Run the raycast
execute at @s anchored eyes positioned ^ ^ ^ run function iris:get_target 
execute at @e[type=marker,tag=iris.ray] run function teplus_exten:chests/insert_book/stronghold

kill @e[type=marker,tag=iris.ray,limit=1,sort=nearest]