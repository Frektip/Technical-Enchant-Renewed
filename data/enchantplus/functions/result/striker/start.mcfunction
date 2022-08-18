tag @s add striker_raycast

execute if predicate enchantplus:random_chance/25 at @s anchored eyes positioned ^ ^ ^ run function enchantplus:result/striker/mini_raycast

tag @s remove striker_raycast 
scoreboard players reset .distance tep.rc

tag @e[distance=..15] remove striked