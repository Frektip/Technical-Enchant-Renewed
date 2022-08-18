##Normal use for survival
execute if score #enchit game.Opts matches 0 if entity @s[nbt=!{Item:{tag:{CustomEnchantments:[{}]}}}] at @s if entity @e[type=marker,tag=teplus.enchanting_table,distance=..1] run function enchantplus:loot/lapis_check 
execute if score #enchtbk game.Opts matches 0 if entity @s[nbt={Item:{id:"minecraft:book",Count:1b}},nbt=!{Item:{tag:{StoredCustomEnchantments:[{}]}}}] at @s if entity @e[type=marker,tag=teplus.enchanting_table,distance=..1] run function enchantplus:loot/checkitem_bookonly 

