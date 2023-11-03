advancement revoke @s only technical_anvil:interacted
scoreboard players reset .distance tep.rc
execute at @s anchored eyes positioned ^ ^ ^ run function teplus_exten:chests/raycast_chest_entity

#Linked the technical anvil ID with the player ID
execute at @e[type=marker,tag=teplus.ray,distance=..16] run scoreboard players operation @e[type=chest_minecart,tag=teplus.technical_anvil,sort=nearest,limit=1] tep.plid = @s tep.plid

execute at @e[type=marker,tag=teplus.ray,distance=..16] run tag @e[type=chest_minecart,tag=teplus.technical_anvil,sort=nearest,limit=1] add tcha_open

kill @e[type=marker,tag=teplus.ray,distance=..16] 