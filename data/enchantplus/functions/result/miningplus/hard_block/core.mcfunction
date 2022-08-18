#Direction
execute if entity @p[distance=..7,x_rotation=-45..45,y_rotation=135..-135,nbt={SelectedItem:{tag:{CustomEnchantments:[{id:"MiningPlus",lvl:1}]}}}] run function enchantplus:result/miningplus/hard_block/north_south
execute if entity @p[distance=..7,x_rotation=-45..45,y_rotation=-45..45,nbt={SelectedItem:{tag:{CustomEnchantments:[{id:"MiningPlus",lvl:1}]}}}] run function enchantplus:result/miningplus/hard_block/north_south
execute if entity @p[distance=..7,x_rotation=-45..45,y_rotation=-135..-45,nbt={SelectedItem:{tag:{CustomEnchantments:[{id:"MiningPlus",lvl:1}]}}}] run function enchantplus:result/miningplus/hard_block/east_west
execute if entity @p[distance=..7,x_rotation=-45..45,y_rotation=45..135,nbt={SelectedItem:{tag:{CustomEnchantments:[{id:"MiningPlus",lvl:1}]}}}] run function enchantplus:result/miningplus/hard_block/east_west
execute if entity @p[distance=..7,x_rotation=-90..-45,nbt={SelectedItem:{tag:{CustomEnchantments:[{id:"MiningPlus",lvl:1}]}}}] run function enchantplus:result/miningplus/hard_block/top_bot
execute if entity @p[distance=..7,x_rotation=45..90,nbt={SelectedItem:{tag:{CustomEnchantments:[{id:"MiningPlus",lvl:1}]}}}] run function enchantplus:result/miningplus/hard_block/top_bot
