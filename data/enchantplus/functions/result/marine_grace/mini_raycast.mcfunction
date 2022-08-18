
execute as @e[tag=!marine_raycast,tag=!ma.graced,type=!#enchantplus:antisoul,dx=0] positioned ~-0.99 ~-0.99 ~-0.99 if entity @s[dx=0] positioned ~0.99 ~0.99 ~0.99 run function enchantplus:result/marine_grace/hit


scoreboard players add .distance tep.rc 1 

execute if score .distance tep.rc matches ..70 positioned ^ ^ ^0.1 rotated ~ ~ if block ~ ~ ~ #enchantplus:not_solid run function enchantplus:result/marine_grace/mini_raycast