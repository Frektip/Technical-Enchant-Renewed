execute positioned ~-0.05 ~-0.05 ~-0.05 as @e[type=#teplus:container_entites,dx=0,sort=nearest,limit=1] at @s align xyz run function teplus:chests/locate_target/raycast/container_entity_found

scoreboard players add .distance teplus.ryc 1 

execute if score .distance teplus.ryc matches ..100 positioned ^ ^ ^0.1 rotated ~ ~ if block ~ ~ ~ #teplus:not_solid run function teplus:chests/locate_target/raycast/chest_entity