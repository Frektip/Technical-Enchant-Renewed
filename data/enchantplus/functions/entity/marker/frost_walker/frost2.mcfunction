
#Run the timer
scoreboard players add @s InLiqdTime 1
#Debug Message
execute if score @s InLiqdTime matches 1 run tellraw @a[tag=teplus.pydbgm] ["",{"text":"TE+» ","color":"#65DAD4","bold":true},{"text":"Frost Walker II marker generated","color":"gray","italic":true,"bold":false}]

execute if entity @s[tag=teplus.Fstep1] at @s if score @s InLiqdTime matches 1 run fill ~-2 ~ ~-2 ~2 ~ ~2 packed_ice replace water[level=0]
execute if entity @s[tag=teplus.Fstep1] at @s if score @s InLiqdTime matches 51 run fill ~-2 ~ ~-2 ~2 ~ ~2 ice replace packed_ice
execute if entity @s[tag=teplus.Fstep1] at @s if score @s InLiqdTime matches 101 run fill ~-2 ~ ~-2 ~2 ~ ~2 water[level=0] replace ice


execute if entity @s[tag=teplus.Fstep2] at @s if score @s InLiqdTime matches 1 run fill ~ ~ ~-2 ~ ~ ~2 packed_ice replace water[level=0]
execute if entity @s[tag=teplus.Fstep2] at @s if score @s InLiqdTime matches 51 run fill ~ ~ ~-2 ~ ~ ~2 ice replace packed_ice
execute if entity @s[tag=teplus.Fstep2] at @s if score @s InLiqdTime matches 101 run fill ~ ~ ~-2 ~ ~ ~2 water[level=0] replace ice


execute if entity @s[tag=teplus.Fstep3] at @s if score @s InLiqdTime matches 1 run fill ~-2 ~ ~ ~2 ~ ~ packed_ice replace water[level=0]
execute if entity @s[tag=teplus.Fstep3] at @s if score @s InLiqdTime matches 51 run fill ~-2 ~ ~ ~2 ~ ~ ice replace packed_ice
execute if entity @s[tag=teplus.Fstep3] at @s if score @s InLiqdTime matches 101 run fill ~-2 ~ ~ ~2 ~ ~ water[level=0] replace ice

#Debug Message
execute if score @s InLiqdTime matches 100 run tellraw @a[tag=teplus.pydbgm] ["",{"text":"TE+» ","color":"#65DAD4","bold":true},{"text":"Frost Walker II marker removed","color":"gray","italic":true,"bold":false}]
execute if score @s InLiqdTime matches 101.. run kill @s