scoreboard players set $min random 0 
scoreboard players set $max random 15 
function enchantplus:random_uniform
execute if score $out random matches 0 run data merge entity @s {Item:{id:"minecraft:white_wool"}} 
execute if score $out random matches 1 run data merge entity @s {Item:{id:"minecraft:orange_wool"}} 
execute if score $out random matches 2 run data merge entity @s {Item:{id:"minecraft:magenta_wool"}} 
execute if score $out random matches 3 run data merge entity @s {Item:{id:"minecraft:light_blue_wool"}} 
execute if score $out random matches 4 run data merge entity @s {Item:{id:"minecraft:yellow_wool"}} 
execute if score $out random matches 5 run data merge entity @s {Item:{id:"minecraft:lime_wool"}} 
execute if score $out random matches 6 run data merge entity @s {Item:{id:"minecraft:pink_wool"}} 
execute if score $out random matches 7 run data merge entity @s {Item:{id:"minecraft:gray_wool"}} 
execute if score $out random matches 8 run data merge entity @s {Item:{id:"minecraft:light_gray_wool"}} 
execute if score $out random matches 9 run data merge entity @s {Item:{id:"minecraft:cyan_wool"}} 
execute if score $out random matches 10 run data merge entity @s {Item:{id:"minecraft:purple_wool"}} 
execute if score $out random matches 11 run data merge entity @s {Item:{id:"minecraft:blue_wool"}} 
execute if score $out random matches 12 run data merge entity @s {Item:{id:"minecraft:brown_wool"}} 
execute if score $out random matches 13 run data merge entity @s {Item:{id:"minecraft:green_wool"}} 
execute if score $out random matches 14 run data merge entity @s {Item:{id:"minecraft:red_wool"}} 
execute if score $out random matches 15 run data merge entity @s {Item:{id:"minecraft:black_wool"}}