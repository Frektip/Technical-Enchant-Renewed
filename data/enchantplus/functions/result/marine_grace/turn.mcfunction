function enchantplus:result/marine_grace/carried

execute if score #tslpm game.Opts matches 1 run particle bubble_pop ~ ~1 ~ 0.2 0.5 0.2 .2 200

#Spin the mob around itself
scoreboard players add @s MarineCount 1
tp @s ~ ~ ~ ~-15 ~

#Summon Current Entity
execute if score @s MarineCount matches 1 run summon marker ~ ~ ~ {Tags:["teplus.marker","grace.marker","grace.current"]}

#Debug Message
execute if score @s MarineCount matches 1 run tellraw @a[tag=teplus.pydbgm] ["",{"text":"TE+» ","color":"#65DAD4","bold":true},{"text":"Summon Marine Grace marker","color":"gray","italic":true,"bold":false}]
execute if score @s MarineCarry matches 1 run tellraw @a[tag=teplus.pydbgm] ["",{"text":"TE+» ","color":"#65DAD4","bold":true},{"text":"An entity is spining due to marine grace","color":"gray","italic":true,"bold":false}]

#Stop the action
execute if score @s MarineCount matches 60.. run tag @s remove ma.graced
execute if score @s MarineCount matches 60.. run scoreboard players reset @s MarineCount

