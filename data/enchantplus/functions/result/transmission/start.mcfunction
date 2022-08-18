tag @s add trms_raycast

execute at @s anchored eyes positioned ^ ^ ^ run function enchantplus:result/transmission/mini_raycast

tag @s remove trms_raycast 
scoreboard players reset .distance tep.rc

tag @e[distance=..15] remove transmited