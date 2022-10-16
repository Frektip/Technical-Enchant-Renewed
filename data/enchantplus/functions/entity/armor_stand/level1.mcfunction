#Detect 6 charged bookshelves
execute if entity @e[type=marker,tag=teplus.enchanting_table,sort=nearest,tag=teplus.tier1,distance=..2] run item replace entity @s armor.head with lapis_lazuli

#Not has 6 charged bookshelves
execute if entity @e[type=marker,tag=teplus.enchanting_table,sort=nearest,tag=!teplus.tier1,distance=..2] run item replace entity @s armor.head with air

#Hover animation
execute if score #tslpm game.Opts matches 1 run scoreboard players add @s tep.hover 1
execute if score #tslpm game.Opts matches 1 run tp @s[scores={tep.hover=..20}] ~ ~.005 ~
execute if score #tslpm game.Opts matches 1 run tp @s[scores={tep.hover=21..40}] ~ ~-.005 ~
execute if score #tslpm game.Opts matches 1 run scoreboard players reset @s[scores={tep.hover=41..}] tep.hover