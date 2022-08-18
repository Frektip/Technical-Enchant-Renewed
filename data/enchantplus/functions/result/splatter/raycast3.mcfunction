execute as @e[tag=!splt.raycast,type=!#enchantplus:antisoul,dx=0] positioned ~-0.99 ~-0.99 ~-0.99 if entity @s[dx=0] positioned ~0.99 ~0.99 ~0.99 run function enchantplus:result/splatter/collide3 

scoreboard players add .distance tep.rc 1 

# Make raycast visible 
particle dust 1.000 1.000 1.000 .4 ~ ~ ~ 0 0 0 1 0 force
particle minecraft:rain ~ ~ ~ 0 0 0 1 0 force

execute if score .distance tep.rc matches ..300 positioned ^ ^ ^0.1 rotated ~ ~ if block ~ ~ ~ #enchantplus:not_solid run function enchantplus:result/splatter/raycast3