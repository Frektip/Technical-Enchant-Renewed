execute if entity @s[nbt={SelectedItem:{tag:{Enchantments:[{id:"minecraft:silk_touch",lvl:1s}]}}}] at @s run function enchantplus:result/scyther/with_silk_touch/check2 
execute unless entity @s[nbt={SelectedItem:{tag:{Enchantments:[{id:"minecraft:silk_touch",lvl:1s}]}}}] at @s run function enchantplus:result/scyther/without_silk_touch/check2 