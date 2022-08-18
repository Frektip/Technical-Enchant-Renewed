
#Run the timer
scoreboard players add @s InLiqdTime 1

execute if entity @s[tag=teplus.Lava1] at @s if score @s InLiqdTime matches 1 run fill ~-1 ~ ~-1 ~1 ~ ~1 minecraft:smooth_basalt replace lava[level=0]
execute if entity @s[tag=teplus.Lava1] at @s if score @s InLiqdTime matches 51 run fill ~-1 ~ ~-1 ~1 ~ ~1 minecraft:basalt replace smooth_basalt
execute if entity @s[tag=teplus.Lava1] at @s if score @s InLiqdTime matches 101 run fill ~-1 ~ ~-1 ~1 ~ ~1 minecraft:lava[level=0] replace basalt


execute if entity @s[tag=teplus.Lava2] at @s if score @s InLiqdTime matches 1 run fill ~ ~ ~-1 ~ ~ ~1 minecraft:smooth_basalt replace lava[level=0]
execute if entity @s[tag=teplus.Lava2] at @s if score @s InLiqdTime matches 51 run fill ~ ~ ~-1 ~ ~ ~1 minecraft:basalt replace smooth_basalt
execute if entity @s[tag=teplus.Lava2] at @s if score @s InLiqdTime matches 101 run fill ~ ~ ~-1 ~ ~ ~1 minecraft:lava[level=0] replace basalt


execute if entity @s[tag=teplus.Lava3] at @s if score @s InLiqdTime matches 1 run fill ~-1 ~ ~ ~1 ~ ~ minecraft:smooth_basalt replace lava[level=0]
execute if entity @s[tag=teplus.Lava3] at @s if score @s InLiqdTime matches 51 run fill ~-1 ~ ~ ~1 ~ ~ minecraft:basalt replace smooth_basalt
execute if entity @s[tag=teplus.Lava3] at @s if score @s InLiqdTime matches 101 run fill ~-1 ~ ~ ~1 ~ ~ minecraft:lava[level=0] replace basalt

execute if score @s InLiqdTime matches 101.. run kill @s