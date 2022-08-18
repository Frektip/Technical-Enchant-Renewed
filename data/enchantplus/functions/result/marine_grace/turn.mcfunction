function enchantplus:result/marine_grace/carried

execute if score #tslpm game.Opts matches 1 run particle minecraft:bubble_pop ~ ~1 ~ 0.2 0.5 0.2 .2 200

#Spin the mob around itself
scoreboard players add @s MarineCount 1
tp @s ~ ~ ~ ~-15 ~

#Summon Current Entity
execute if score @s MarineCount matches 1 run summon minecraft:marker ~ ~ ~ {Tags:["teplus.marker","grace.marker","grace.current"]}

#Stop the action
execute if score @s MarineCount matches 60.. run tag @s remove ma.graced
execute if score @s MarineCount matches 60.. run scoreboard players reset @s MarineCount

