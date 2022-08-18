
#Run the timer
scoreboard players add @s InLiqdTime 1

execute if entity @s[tag=teplus.Fstep1] at @s if score @s InLiqdTime matches 1 run fill ~-2 ~ ~-2 ~2 ~ ~2 minecraft:packed_ice replace water[level=0]
execute if entity @s[tag=teplus.Fstep1] at @s if score @s InLiqdTime matches 51 run fill ~-2 ~ ~-2 ~2 ~ ~2 minecraft:ice replace packed_ice
execute if entity @s[tag=teplus.Fstep1] at @s if score @s InLiqdTime matches 101 run fill ~-2 ~ ~-2 ~2 ~ ~2 minecraft:water[level=0] replace ice


execute if entity @s[tag=teplus.Fstep2] at @s if score @s InLiqdTime matches 1 run fill ~ ~ ~-2 ~ ~ ~2 minecraft:packed_ice replace water[level=0]
execute if entity @s[tag=teplus.Fstep2] at @s if score @s InLiqdTime matches 51 run fill ~ ~ ~-2 ~ ~ ~2 minecraft:ice replace packed_ice
execute if entity @s[tag=teplus.Fstep2] at @s if score @s InLiqdTime matches 101 run fill ~ ~ ~-2 ~ ~ ~2 minecraft:water[level=0] replace ice


execute if entity @s[tag=teplus.Fstep3] at @s if score @s InLiqdTime matches 1 run fill ~-2 ~ ~ ~2 ~ ~ minecraft:packed_ice replace water[level=0]
execute if entity @s[tag=teplus.Fstep3] at @s if score @s InLiqdTime matches 51 run fill ~-2 ~ ~ ~2 ~ ~ minecraft:ice replace packed_ice
execute if entity @s[tag=teplus.Fstep3] at @s if score @s InLiqdTime matches 101 run fill ~-2 ~ ~ ~2 ~ ~ minecraft:water[level=0] replace ice

execute if score @s InLiqdTime matches 101.. run kill @s