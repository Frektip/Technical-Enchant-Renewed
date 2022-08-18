execute if entity @s[nbt={SelectedItem:{tag:{CustomEnchantments:[{id:"Striker",lvl:1}]}}}] as @e[tag=!striker_raycast,tag=!striked,type=!#enchantplus:antisoul,dx=0] positioned ~-0.99 ~-0.99 ~-0.99 if entity @s[dx=0] positioned ~0.99 ~0.99 ~0.99 run function enchantplus:result/striker/found1
execute if entity @s[nbt={SelectedItem:{tag:{CustomEnchantments:[{id:"Striker",lvl:2}]}}}] as @e[tag=!striker_raycast,tag=!striked,type=!#enchantplus:antisoul,dx=0] positioned ~-0.99 ~-0.99 ~-0.99 if entity @s[dx=0] positioned ~0.99 ~0.99 ~0.99 run function enchantplus:result/striker/found2
execute if entity @s[nbt={SelectedItem:{tag:{CustomEnchantments:[{id:"Striker",lvl:3}]}}}] as @e[tag=!striker_raycast,tag=!striked,type=!#enchantplus:antisoul,dx=0] positioned ~-0.99 ~-0.99 ~-0.99 if entity @s[dx=0] positioned ~0.99 ~0.99 ~0.99 run function enchantplus:result/striker/found3

scoreboard players add .distance tep.rc 1 

execute if score .distance tep.rc matches ..70 positioned ^ ^ ^0.1 rotated ~ ~ if block ~ ~ ~ #enchantplus:not_solid run function enchantplus:result/striker/mini_raycast