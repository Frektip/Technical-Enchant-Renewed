#Direction
execute if entity @p[distance=..7,x_rotation=-45..45,y_rotation=135..-135,nbt={SelectedItem:{tag:{CustomEnchantments:[{id:"Excavator",lvl:1}]}}}] run function enchantplus:result/excavator/north_south
execute if entity @p[distance=..7,x_rotation=-45..45,y_rotation=-45..45,nbt={SelectedItem:{tag:{CustomEnchantments:[{id:"Excavator",lvl:1}]}}}] run function enchantplus:result/excavator/north_south
execute if entity @p[distance=..7,x_rotation=-45..45,y_rotation=-135..-45,nbt={SelectedItem:{tag:{CustomEnchantments:[{id:"Excavator",lvl:1}]}}}] run function enchantplus:result/excavator/east_west
execute if entity @p[distance=..7,x_rotation=-45..45,y_rotation=45..135,nbt={SelectedItem:{tag:{CustomEnchantments:[{id:"Excavator",lvl:1}]}}}] run function enchantplus:result/excavator/east_west
execute if entity @p[distance=..7,x_rotation=-90..-45,nbt={SelectedItem:{tag:{CustomEnchantments:[{id:"Excavator",lvl:1}]}}}] run function enchantplus:result/excavator/top_bot
execute if entity @p[distance=..7,x_rotation=45..90,nbt={SelectedItem:{tag:{CustomEnchantments:[{id:"Excavator",lvl:1}]}}}] run function enchantplus:result/excavator/top_bot
execute if entity @s[nbt={Item:{tag:{CustomEnchantments:{ExcavatorSilk:1}}}}] as @e[type=item,distance=0.001..2,nbt={Age:0s}] run function enchantplus:result/excavator/silktouch
execute if entity @s[nbt={Item:{tag:{CustomEnchantments:{ExGrass:1}}}}] as @e[type=item,distance=0.001..2,nbt={Age:0s}] run function enchantplus:result/excavator/grass
execute if entity @s[nbt={Item:{tag:{CustomEnchantments:{ExPodzol:1}}}}] as @e[type=item,distance=0.001..2,nbt={Age:0s}] run function enchantplus:result/excavator/podzol
execute if entity @s[nbt={Item:{tag:{CustomEnchantments:{ExMycel:1}}}}] as @e[type=item,distance=0.001..2,nbt={Age:0s}] run function enchantplus:result/excavator/mycelium
execute if entity @s[nbt={Item:{tag:{CustomEnchantments:{ExcavatorFort:1}}}}] as @e[type=item,distance=0.001..2,nbt={Age:0s}] run function enchantplus:result/excavator/fortune
