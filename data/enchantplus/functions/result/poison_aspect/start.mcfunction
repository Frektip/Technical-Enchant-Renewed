tag @s add poison_raycast

execute at @s anchored eyes positioned ^ ^ ^ run function enchantplus:result/poison_aspect/mini_raycast

tag @s remove poison_raycast 
scoreboard players reset .distance tep.rc

tag @e[distance=..15] remove poisoned