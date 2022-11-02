execute as @e[type=!#teplus_exten:drops/ignore,tag=!tepdrop.can,dx=0] positioned ~-0.99 ~-0.99 ~-0.99 if entity @s[dx=0] positioned ~0.99 ~0.99 ~0.99 at @s run function teplus_exten:drops/check_options


scoreboard players add .distance tep.rc 1 

execute if score .distance tep.rc matches ..70 positioned ^ ^ ^0.1 rotated ~ ~ if block ~ ~ ~ #enchantplus:not_solid run function teplus_exten:drops/convert/get_entity