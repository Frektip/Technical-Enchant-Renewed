#Reset the score
scoreboard players reset @s teplus.facdmg

#Trigger the fire aura
playsound minecraft:entity.blaze.shoot master @a ~ ~ ~ 5 .7
playsound minecraft:entity.blaze.shoot master @a ~ ~ ~ 5 .7
particle lava ~ ~.5 ~ 0.2 0 0.2 0 70
particle flame ~ ~.5 ~ 0.5 0.5 0.5 .5 500
#Bonus effects, give resistance V, so it don't explode
effect give @s fire_resistance 10 0
effect give @s resistance 1 4 true

#Affect other entityies/players within a 15 block radious
execute as @e[type=!#enchantplus:antisoul,distance=0.0001..15] at @s run function enchantplus:result/flaming_skin/affect_entity
