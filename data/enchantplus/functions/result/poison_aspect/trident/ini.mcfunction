
execute if entity @s[nbt={Trident:{tag:{CustomEnchantments:[{id:"PoisonAspect",lvl:1}]}}}] run tag @e[tag=!Tri.poi1,distance=0.001..7,nbt={HurtTime:10s}] add Tri.poi1
execute if entity @s[nbt={Trident:{tag:{CustomEnchantments:[{id:"PoisonAspect",lvl:2}]}}}] run tag @e[tag=!Tri.poi2,distance=0.001..7,nbt={HurtTime:10s}] add Tri.poi2
execute if entity @s[nbt={Trident:{tag:{CustomEnchantments:[{id:"PoisonAspect",lvl:3}]}}}] run tag @e[tag=!Tri.poi3,distance=0.001..7,nbt={HurtTime:10s}] add Tri.poi3

execute as @e[tag=Tri.poi1] at @s run function enchantplus:result/poison_aspect/trident/hit
execute as @e[tag=Tri.poi2] at @s run function enchantplus:result/poison_aspect/trident/hit
execute as @e[tag=Tri.poi3] at @s run function enchantplus:result/poison_aspect/trident/hit
