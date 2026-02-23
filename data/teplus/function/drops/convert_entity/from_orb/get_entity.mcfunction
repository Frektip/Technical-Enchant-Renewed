execute as @e[type=!#teplus:ignore/for_drops,tag=!teplus.drop.can,dx=0] positioned ~-0.99 ~-0.99 ~-0.99 if entity @s[dx=0] positioned ~0.99 ~0.99 ~0.99 at @s run function teplus:drops/convert_entity/check_options

scoreboard players add .distance teplus.ryc 1 

execute if score .distance teplus.ryc matches ..70 positioned ^ ^ ^0.1 rotated ~ ~ if block ~ ~ ~ #teplus:not_solid run function teplus:drops/convert_entity/from_orb/get_entity