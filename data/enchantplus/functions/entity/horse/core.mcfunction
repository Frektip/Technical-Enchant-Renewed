#Separate Custom enchantments, Cusrom Curses and Frost Walker
execute if entity @s[nbt={ArmorItem:{tag:{CustomEnchantments:[{}]}}}] run function enchantplus:entity/horse/has_enchant
execute if entity @s[nbt={ArmorItem:{tag:{CustomCurse:[{id:"Sensitive",lvl:1}]}}}] run function enchantplus:entity/horse/enchantments/sensitive_ini
execute if entity @s[nbt={ArmorItem:{tag:{Enchantments:[{id:"minecraft:frost_walker"}]}}}] at @s run function enchantplus:entity/horse/enchantments/frost_walker_ini
