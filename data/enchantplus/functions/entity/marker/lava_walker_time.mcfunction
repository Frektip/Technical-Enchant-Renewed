
#Run the timer
scoreboard players add @s InLiqdTime 1
#Debug Message
execute if score @s InLiqdTime matches 1 run tellraw @a[tag=teplus.pydbgm] ["",{"text":"TE+» ","color":"#65DAD4","bold":true},{"text":"Lava Walker marker generated","color":"gray","italic":true,"bold":false}]

execute if entity @s[tag=teplus.Lava1] at @s if score @s InLiqdTime matches 1 run fill ~-1 ~ ~-1 ~1 ~ ~1 smooth_basalt replace lava[level=0]
execute if entity @s[tag=teplus.Lava1] at @s if score @s InLiqdTime matches 51 run fill ~-1 ~ ~-1 ~1 ~ ~1 basalt replace smooth_basalt
execute if entity @s[tag=teplus.Lava1] at @s if score @s InLiqdTime matches 101 run fill ~-1 ~ ~-1 ~1 ~ ~1 lava[level=0] replace basalt


execute if entity @s[tag=teplus.Lava2] at @s if score @s InLiqdTime matches 1 run fill ~ ~ ~-1 ~ ~ ~1 smooth_basalt replace lava[level=0]
execute if entity @s[tag=teplus.Lava2] at @s if score @s InLiqdTime matches 51 run fill ~ ~ ~-1 ~ ~ ~1 basalt replace smooth_basalt
execute if entity @s[tag=teplus.Lava2] at @s if score @s InLiqdTime matches 101 run fill ~ ~ ~-1 ~ ~ ~1 lava[level=0] replace basalt


execute if entity @s[tag=teplus.Lava3] at @s if score @s InLiqdTime matches 1 run fill ~-1 ~ ~ ~1 ~ ~ smooth_basalt replace lava[level=0]
execute if entity @s[tag=teplus.Lava3] at @s if score @s InLiqdTime matches 51 run fill ~-1 ~ ~ ~1 ~ ~ basalt replace smooth_basalt
execute if entity @s[tag=teplus.Lava3] at @s if score @s InLiqdTime matches 101 run fill ~-1 ~ ~ ~1 ~ ~ lava[level=0] replace basalt

#Debug Message
execute if score @s InLiqdTime matches 100 run tellraw @a[tag=teplus.pydbgm] ["",{"text":"TE+» ","color":"#65DAD4","bold":true},{"text":"Lava Walker marker removed","color":"gray","italic":true,"bold":false}]
execute if score @s InLiqdTime matches 101.. run kill @s