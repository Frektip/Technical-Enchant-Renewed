# Add a tag to know that the player was registered
tag @s add teplus.registered

# This is to give each player a unique id
scoreboard players add @s teplus.player.id 0
execute if score @s teplus.player.id matches 0 run scoreboard players add $next teplus.player.id 1
execute if score @s teplus.player.id matches 0 run scoreboard players operation @s teplus.player.id = $next teplus.player.id