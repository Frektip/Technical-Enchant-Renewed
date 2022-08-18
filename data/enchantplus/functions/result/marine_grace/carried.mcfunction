### helps to make mobs suffocating in a wall get back out.
#This is done for 3.5 seconds

scoreboard players add @s MarineCarry 1

execute unless block ~ ~ ~ #enchantplus:not_solid run tp @s ~ ~.5 ~
execute unless block ^ ^ ^-.5 #enchantplus:not_solid run tp @s ^ ^ ^.2

execute if score @s MarineCarry matches 70.. run tag @s remove marine.carried
execute if score @s MarineCarry matches 70.. run scoreboard players reset @s MarineCarry

