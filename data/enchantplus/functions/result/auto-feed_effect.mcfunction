#Effect
effect give @s minecraft:saturation 1 5 true 
execute as @s at @s run particle minecraft:end_rod ~ ~1 ~ 0.5 0.5 0.5 0.1 20 
execute as @s at @s run playsound minecraft:entity.player.burp ambient @s ~ ~ ~ 1 
scoreboard players set @s TimerFeed 0 