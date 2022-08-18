#Particles
execute if score #tslpm game.Opts matches 1 run particle block cobweb ~ ~ ~ 0.5 0.1 0.5 0 50

#Run the timer for 30s
scoreboard players add @s CobwebGroup 1

#Clear the cobwebs and kill the marker
execute if score @s CobwebGroup matches 300.. run fill ~1 ~ ~1 ~-1 ~ ~-1 air replace cobweb
execute if score @s CobwebGroup matches 300.. run playsound block.stone.break ambient @a[distance=..15] ~ ~ ~ 5 .9
execute if score @s CobwebGroup matches 300.. run kill @s