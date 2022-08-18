execute if entity @s[nbt={SelectedItem:{tag:{CustomEnchantments:[{id:"PoisonAspect",lvl:1}]}}}] as @e[tag=!poison_raycast,tag=!poisoned,type=!#enchantplus:antisoul,dx=0] positioned ~-0.99 ~-0.99 ~-0.99 if entity @s[dx=0] positioned ~0.99 ~0.99 ~0.99 run function enchantplus:result/poison_aspect/hit1
execute if entity @s[nbt={SelectedItem:{tag:{CustomEnchantments:[{id:"PoisonAspect",lvl:2}]}}}] as @e[tag=!poison_raycast,tag=!poisoned,type=!#enchantplus:antisoul,dx=0] positioned ~-0.99 ~-0.99 ~-0.99 if entity @s[dx=0] positioned ~0.99 ~0.99 ~0.99 run function enchantplus:result/poison_aspect/hit2
execute if entity @s[nbt={SelectedItem:{tag:{CustomEnchantments:[{id:"PoisonAspect",lvl:3}]}}}] as @e[tag=!poison_raycast,tag=!poisoned,type=!#enchantplus:antisoul,dx=0] positioned ~-0.99 ~-0.99 ~-0.99 if entity @s[dx=0] positioned ~0.99 ~0.99 ~0.99 run function enchantplus:result/poison_aspect/hit3


scoreboard players add .distance tep.rc 1 

execute if score .distance tep.rc matches ..70 positioned ^ ^ ^0.1 rotated ~ ~ if block ~ ~ ~ #enchantplus:not_solid run function enchantplus:result/poison_aspect/mini_raycast