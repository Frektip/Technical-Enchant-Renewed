function enchantplus:result/transmission/get_level

tag @s add trms_raycast

execute at @s anchored eyes positioned ^ ^ ^ run function enchantplus:result/transmission/mini_raycast

tag @s remove trms_raycast 
scoreboard players reset .distance tep.rc
scoreboard players reset #tepl.trns teplus.data

tag @e[distance=..15] remove transmited