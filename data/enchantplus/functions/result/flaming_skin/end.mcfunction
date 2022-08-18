#Return the player to it's original gamemode
execute if score .gamemode tep.plid matches 0 run gamemode survival @s 
execute if score .gamemode tep.plid matches 1 run gamemode creative @s 
execute if score .gamemode tep.plid matches 2 run gamemode adventure @s 

#Add a delay tag 
tag @s add flsk.dly 

#Clear the system
tag @s remove lv.spec 
kill @e[tag=arc.vis,type=area_effect_cloud] 
scoreboard players reset @s TimerinLava