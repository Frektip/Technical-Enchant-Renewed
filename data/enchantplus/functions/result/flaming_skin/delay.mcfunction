#Do a 2 seconds delay and then remove the tag delay

scoreboard players add @s TimerFlame 1 
execute if score @s TimerFlame matches 40.. run tag @s remove flsk.dly 
execute if score @s TimerFlame matches 40.. run playsound block.note_block.bell master @s ~ ~ ~ 3 1 
execute if score @s TimerFlame matches 40.. run scoreboard players reset @s TimerFlame 
