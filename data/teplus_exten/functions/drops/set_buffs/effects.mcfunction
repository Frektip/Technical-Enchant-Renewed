scoreboard players set $min random 0
scoreboard players set $max random 6
function enchantplus:random_uniform

#Give fire resistance by default
effect give @s minecraft:fire_resistance 99999 0

#Resistance
execute if score $out random matches 0 run effect give @s minecraft:resistance 99999 0
execute if score $out random matches 1 run effect give @s minecraft:resistance 99999 1

#Regeneration
execute if score $out random matches 2 run effect give @s minecraft:regeneration 99999 0
execute if score $out random matches 3 run effect give @s minecraft:regeneration 99999 1

#Speed
execute if score $out random matches 4 run effect give @s minecraft:speed 99999 0
execute if score $out random matches 5 run effect give @s minecraft:speed 99999 1

#Strength
execute if score $out random matches 6 run effect give @s minecraft:strength 99999 0