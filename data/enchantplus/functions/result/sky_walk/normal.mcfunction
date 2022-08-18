effect give @s levitation 2 1 true
execute if score #tslpm game.Opts matches 1 if data entity @s ActiveEffects[{Id:25,Amplifier:1b}] at @s run particle cloud ~ ~-.2 ~ 0.3 0.1 0.3 0.05 10
#Go Down
execute if predicate enchantplus:is_sneaking at @s if block ~ ~-0.5 ~ #enchantplus:not_solid if block ~ ~-4 ~ #enchantplus:not_solid run effect clear @s levitation 
execute if predicate enchantplus:is_sneaking at @s if block ~ ~-0.5 ~ #enchantplus:not_solid if block ~ ~-4 ~ #enchantplus:not_solid run effect give @s slow_falling 1 29 true 
