tag @s add marine_raycast

execute at @s anchored eyes positioned ^ ^ ^ run function enchantplus:result/marine_grace/mini_raycast

tag @s remove marine_raycast 
scoreboard players reset .distance tep.rc
