#Run the timer to give the player a tag after 3 seconds
execute if entity @s[tag=!tibr.active] run scoreboard players add @s TimerTimeBreak 1
execute if score @s TimerTimeBreak matches 60.. run tag @s add tibr.active

#Check if the player has the tag and is sneaking ON THE GROUND
execute if entity @s[tag=tibr.active] unless predicate enchantplus:is_sneaking run scoreboard players reset @s WaitTimeBreak
execute if entity @s[tag=tibr.active] if predicate enchantplus:is_sneaking if block ~ ~-1 ~ air run scoreboard players reset @s WaitTimeBreak

execute if entity @s[tag=tibr.active] if predicate enchantplus:is_sneaking unless block ~ ~-1 ~ air run scoreboard players add @s WaitTimeBreak 1

#Grafical stuff
execute if score @s WaitTimeBreak matches 20 run playsound minecraft:block.amethyst_block.break master @a[distance=..15] ~ ~ ~ 5 .5
execute if score @s WaitTimeBreak matches 20.. run particle entity_effect ^ ^1 ^1 0.620 1.000 0.659 1 0 force

execute if score @s WaitTimeBreak matches 40 run playsound minecraft:block.amethyst_block.break master @a[distance=..15] ~ ~ ~ 5 .5
execute if score @s WaitTimeBreak matches 40.. run particle entity_effect ^1 ^1 ^ 0.620 1.000 0.659 1 0 force

execute if score @s WaitTimeBreak matches 60 run playsound minecraft:block.amethyst_block.break master @a[distance=..15] ~ ~ ~ 5 .5
execute if score @s WaitTimeBreak matches 60.. run particle entity_effect ^-1 ^1 ^ 0.620 1.000 0.659 1 0 force

#Afeter 4 seconds it finally triggers
execute if score @s WaitTimeBreak matches 80.. run function enchantplus:result/time_breaker/trigger
