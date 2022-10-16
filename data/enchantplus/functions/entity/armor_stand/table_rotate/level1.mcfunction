#Detect 6 charged bookshelves
execute as @s[tag=!tier.up] positioned ~ ~1 ~ if entity @e[type=marker,tag=teplus.enchanting_table,sort=nearest,tag=teplus.tier1,distance=...5] run function enchantplus:entity/armor_stand/table_rotate/tier_up

#Not has 6 charged bookshelves
execute as @s[tag=tier.up] positioned ~ ~1 ~ if entity @e[type=marker,tag=teplus.enchanting_table,sort=nearest,tag=!teplus.tier1,distance=...5] run function enchantplus:entity/armor_stand/table_rotate/tier_down

#Hover animation
execute if score #tslpm game.Opts matches 1 run scoreboard players add @s tep.hover 1
execute if score #tslpm game.Opts matches 1 run tp @s[scores={tep.hover=..20}] ~ ~.005 ~
execute if score #tslpm game.Opts matches 1 run tp @s[scores={tep.hover=21..40}] ~ ~-.005 ~
execute if score #tslpm game.Opts matches 1 run scoreboard players reset @s[scores={tep.hover=41..}] tep.hover