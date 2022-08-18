#Direction
execute if entity @p[distance=..7,x_rotation=-45..45,y_rotation=135..-135,nbt={SelectedItem:{tag:{CustomEnchantments:[{id:"MiningPlus",lvl:1}]}}}] run function enchantplus:result/miningplus/north_south
execute if entity @p[distance=..7,x_rotation=-45..45,y_rotation=-45..45,nbt={SelectedItem:{tag:{CustomEnchantments:[{id:"MiningPlus",lvl:1}]}}}] run function enchantplus:result/miningplus/north_south
execute if entity @p[distance=..7,x_rotation=-45..45,y_rotation=-135..-45,nbt={SelectedItem:{tag:{CustomEnchantments:[{id:"MiningPlus",lvl:1}]}}}] run function enchantplus:result/miningplus/east_west
execute if entity @p[distance=..7,x_rotation=-45..45,y_rotation=45..135,nbt={SelectedItem:{tag:{CustomEnchantments:[{id:"MiningPlus",lvl:1}]}}}] run function enchantplus:result/miningplus/east_west
execute if entity @p[distance=..7,x_rotation=-90..-45,nbt={SelectedItem:{tag:{CustomEnchantments:[{id:"MiningPlus",lvl:1}]}}}] run function enchantplus:result/miningplus/top_bot
execute if entity @p[distance=..7,x_rotation=45..90,nbt={SelectedItem:{tag:{CustomEnchantments:[{id:"MiningPlus",lvl:1}]}}}] run function enchantplus:result/miningplus/top_bot

#Special blocks (Ores and fortune)
execute if entity @s[nbt={Item:{tag:{CustomEnchantments:{MiningPlusItembreakFortune:1}}}}] as @e[type=item,distance=0.001..2,nbt={Age:0s}] run function enchantplus:result/miningplus/fortune
execute if entity @s[nbt={Item:{tag:{CustomEnchantments:{MiningPlusItembreakRaw:1}}}}] as @e[type=item,distance=0.001..2,nbt={Age:0s}] run function enchantplus:result/miningplus/raw
execute if entity @s[nbt={Item:{tag:{CustomEnchantments:{MiningPlusItembreakOre:1}}}}] as @e[type=item,distance=0.001..2,nbt={Age:0s}] run function enchantplus:result/miningplus/ore
execute if entity @s[nbt={Item:{tag:{CustomEnchantments:{MiningPlusItembreakDeepOre:1}}}}] as @e[type=item,distance=0.001..2,nbt={Age:0s}] run function enchantplus:result/miningplus/deepore