#Show particles
execute if score #tslpm game.Opts matches 1 run particle minecraft:enchant ~ ~.2 ~ 0.5 0.5 0.5 .25 15

#Detect Enchantment
execute if score #antexp Enchopts matches 0 as @s[nbt={ArmorItem:{tag:{CustomEnchantments:[{id:"AntiExplosion",lvl:1}]}}}] at @s run function enchantplus:result/anti-explosion
execute if score #antvn Enchopts matches 0 as @s[nbt={ArmorItem:{tag:{CustomEnchantments:[{id:"AntiVenom"}]}}}] at @s run function enchantplus:entity/horse/enchantments/anti_venom_check
execute if score #rcv Enchopts matches 0 as @s[nbt={ArmorItem:{tag:{CustomEnchantments:[{id:"Recovery"}]}}}] unless entity @s[nbt={ActiveEffects:[{Id:10}]}] run function enchantplus:entity/horse/enchantments/recovery
execute if score #lvwk Enchopts matches 0 as @s[nbt={ArmorItem:{tag:{CustomEnchantments:[{id:"LavaWalker",lvl:1}]}}}] at @s run function enchantplus:result/lavawalker
