#Init Iris raycast
#Change the settings to detect the chest minecart
data modify storage iris:input TargetEntities set value true

#Run the raycast
execute at @s anchored eyes positioned ^ ^ ^ run function iris:get_target 
execute at @e[type=marker,tag=iris.ray] as @e[type=chest_minecart,limit=1,sort=nearest] run function teplus_exten:chests/insert_book/abandoned_mineshaft

kill @e[type=marker,tag=iris.ray,limit=1,sort=nearest]

#Revert the settings so IRIS will ignore entities
data modify storage iris:input TargetEntities set value false