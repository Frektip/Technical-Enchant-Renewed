tag @s add teplus.uuid

#This is to give each player a unique id for some enchantments
scoreboard players add @s tep.plid 0 
execute if score @s tep.plid matches 0 run scoreboard players add .system tep.plid 1 
execute if score @s tep.plid matches 0 run scoreboard players operation @s tep.plid = .system tep.plid 

#Extra step to get the full UUID of a player (this is mainly for the bow and crossbow)
function enchbowcross:uuid 