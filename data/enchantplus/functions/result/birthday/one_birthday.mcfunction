#Create random cakes for 1 second every 30 seconds
execute if score @s MasterCelebrate matches ..20 if block ~ ~-1 ~ air run function enchantplus:result/birthday/generate_cakes
execute if score @s MasterCelebrate matches 580..600 if block ~ ~-1 ~ air run function enchantplus:result/birthday/generate_cakes
execute if score @s MasterCelebrate matches 1180..1200 if block ~ ~-1 ~ air run function enchantplus:result/birthday/generate_cakes
execute if score @s MasterCelebrate matches 1780..1800 if block ~ ~-1 ~ air run function enchantplus:result/birthday/generate_cakes
execute if score @s MasterCelebrate matches 2380..2400 if block ~ ~-1 ~ air run function enchantplus:result/birthday/generate_cakes

#Summon ballons and fireworks
scoreboard players add @s TimerYearsBirth 1 
execute as @s[scores={TimerYearsBirth=10..}] run function enchantplus:result/birthday/balloon 
execute as @s[scores={TimerYearsBirth=10..}] run function enchantplus:result/birthday/firework 