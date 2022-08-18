#Show particles
execute if score #tslpm game.Opts matches 1 run particle enchant ~ ~.2 ~ 0.5 0.5 0.5 .25 15

#Detect enchantment level
execute if entity @s[nbt={ArmorItem:{tag:{Enchantments:[{id:"minecraft:frost_walker",lvl:1s}]}}}] run function enchantplus:entity/horse/enchantments/frost_walker_1
execute if entity @s[nbt={ArmorItem:{tag:{Enchantments:[{id:"minecraft:frost_walker",lvl:2s}]}}}] run function enchantplus:entity/horse/enchantments/frost_walker_2