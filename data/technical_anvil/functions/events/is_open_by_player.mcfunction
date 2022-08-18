advancement revoke @s only technical_anvil:interacted 
execute at @s anchored eyes positioned ^ ^ ^ run function iris:get_target 

#Linked the technical anvil ID with the player ID
execute at @e[type=minecraft:marker,tag=iris.ray,distance=..16] run scoreboard players operation @e[type=chest_minecart,tag=teplus.technical_anvil,sort=nearest,limit=1] tep.plid = @s tep.plid

execute at @e[type=minecraft:marker,tag=iris.ray,distance=..16] run tag @e[type=chest_minecart,tag=teplus.technical_anvil,sort=nearest,limit=1] add tcha_open

kill @e[type=minecraft:marker,tag=iris.ray,distance=..16] 