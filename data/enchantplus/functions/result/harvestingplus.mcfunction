scoreboard players add @s TimerHarvest 1 

execute if score @s TimerHarvest matches 3590.. at @s run playsound block.moss.place master @p ~ ~ ~ 2 0.5 
execute if score @s TimerHarvest matches 3590.. at @s run particle composter ~ ~1.5 ~ 0.3 0.3 0.3 3 5 

execute if predicate enchantplus:dimension/in_overworld if entity @s[scores={TimerHarvest=3600}] at @s run loot spawn ~ ~1 ~ loot enchantplus:harvest_over
execute if predicate enchantplus:dimension/in_nether if entity @s[scores={TimerHarvest=3600}] at @s run loot spawn ~ ~1 ~ loot enchantplus:harvest_nether

execute if score @s TimerHarvest matches 3600.. at @s run scoreboard players reset @s TimerHarvest 
