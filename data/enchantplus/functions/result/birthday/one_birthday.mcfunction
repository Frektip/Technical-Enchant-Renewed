#Create random cakes
scoreboard players set $min random 0 
scoreboard players set $max random 38 
function enchantplus:random_uniform
execute if score $out random matches 0..16 run function enchantplus:result/birthday/candle_cake 
execute if score $out random matches 18..38 run function enchantplus:result/birthday/only_cake 

#Summon ballons and fireworks
scoreboard players add @s TimerYearsBirth 1 
execute as @s[scores={TimerYearsBirth=10..}] run function enchantplus:result/birthday/balloon 
execute as @s[scores={TimerYearsBirth=10..}] run function enchantplus:result/birthday/firework 