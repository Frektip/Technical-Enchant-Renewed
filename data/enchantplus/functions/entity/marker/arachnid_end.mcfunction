#Particles
execute if score #tslpm game.Opts matches 1 run particle block cobweb ~ ~ ~ 0.5 0.1 0.5 0 50

#Run the timer for 15s
scoreboard players add @s CobwebGroup 1

#Debug Message
execute if score @s CobwebGroup matches 1 run tellraw @a[tag=teplus.pydbgm] ["",{"text":"TE+» ","color":"#65DAD4","bold":true},{"text":"Waiting 15 seconds to clear arachnid cobwebs","color":"gray","italic":true,"bold":false}]
execute if score @s CobwebGroup matches 299 run tellraw @a[tag=teplus.pydbgm] ["",{"text":"TE+» ","color":"#65DAD4","bold":true},{"text":"Arachnid cobwebs removed","color":"gray","italic":true,"bold":false}]

#Clear the cobwebs and kill the marker
execute if score @s CobwebGroup matches 300.. run fill ~1 ~ ~1 ~-1 ~ ~-1 air replace cobweb
execute if score @s CobwebGroup matches 300.. run playsound block.stone.break ambient @a[distance=..15] ~ ~ ~ 5 .9
execute if score @s CobwebGroup matches 300.. run kill @s