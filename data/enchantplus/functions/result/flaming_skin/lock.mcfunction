#Store on what gamemode the player was
execute store result score .gamemode tep.plid run data get entity @p playerGameType 

#Summon the marker/area effect cloud and setting it's score the same as the player
execute at @s run summon area_effect_cloud ~ ~ ~ {Tags:["arc.vis","new"],Age:-2147483648,Duration:-1,WaitTime:-2147483648} 
tp @e[tag=arc.vis,tag=new] @s 
scoreboard players operation @e[tag=arc.vis,tag=new] tep.plid = @s tep.plid 
tag @e[tag=arc.vis,tag=new] remove new 

#Add a unique tag to the player to set it's gamemode to spectator
tag @s add lv.spec