#Run the timer to give the entity a tag after 3 seconds
execute if entity @s[tag=!tibr.active] run scoreboard players add @s TimerTimeBreak 1
execute if score @s TimerTimeBreak matches 60.. run tag @s add tibr.active

#Check if the mob has the tag

execute if entity @s[tag=tibr.active] run scoreboard players add @s WaitTimeBreak 1

#Grafical stuff
execute if score @s WaitTimeBreak matches 20 run playsound block.amethyst_block.break master @a[distance=..15] ~ ~ ~ 5 .5
execute if score @s WaitTimeBreak matches 20.. run particle entity_effect ^ ^1 ^1 0.620 1.000 0.659 1 0 force

execute if score @s WaitTimeBreak matches 40 run playsound block.amethyst_block.break master @a[distance=..15] ~ ~ ~ 5 .5
execute if score @s WaitTimeBreak matches 40.. run particle entity_effect ^1 ^1 ^ 0.620 1.000 0.659 1 0 force

execute if score @s WaitTimeBreak matches 60 run playsound block.amethyst_block.break master @a[distance=..15] ~ ~ ~ 5 .5
execute if score @s WaitTimeBreak matches 60.. run particle entity_effect ^-1 ^1 ^ 0.620 1.000 0.659 1 0 force

#Afeter 4 seconds it finally triggers
execute if score @s WaitTimeBreak matches 80.. run function teplus_exten:mobs/has_ench/armor/time_breaker/trigger
