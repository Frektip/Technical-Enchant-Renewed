# Revoke advancement
advancement revoke @s only teplus:events/open_technical_anvil

# Locate Technical Anvil
# Reuse chest minecart location from the chest loot system
scoreboard players reset .distance teplus.ryc
execute at @s anchored eyes positioned ^ ^ ^ run function teplus:chests/locate_target/chest_entity

# Link the technical anvil ID with the player ID
execute at @e[type=marker,tag=teplus.ray,distance=..16] run scoreboard players operation @e[type=chest_minecart,tag=teplus.technical_anvil,sort=nearest,limit=1] teplus.player.id = @s teplus.player.id

execute at @e[type=marker,tag=teplus.ray,distance=..16] run tag @e[type=chest_minecart,tag=teplus.technical_anvil,sort=nearest,limit=1] add teplus.anvil.open

# Kill raycast marker
kill @e[type=marker,tag=teplus.ray,distance=..16] 