execute positioned ~-0.05 ~-0.05 ~-0.05 as @e[type=chest_minecart,dx=0,sort=nearest,limit=1] at @s align xyz run function teplus_exten:chests/minecart_found

scoreboard players add .distance tep.rc 1 

execute if score .distance tep.rc matches ..100 positioned ^ ^ ^0.1 rotated ~ ~ if block ~ ~ ~ #enchantplus:not_solid run function teplus_exten:chests/raycast_chest_minecart