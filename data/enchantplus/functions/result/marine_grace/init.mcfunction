advancement revoke @s only enchantplus:marine_grace

#TRIGGER DEPENDING ON PROBABILITY
#MG1 = 25%
execute if score #mrgc Enchopts matches 0 if predicate enchantplus:random_chance/25 if entity @s[nbt={SelectedItem:{tag:{CustomEnchantments:[{id:"MarineGrace",lvl:1}]}}}] run function enchantplus:result/marine_grace/start

#MG1 = 50%
execute if score #mrgc Enchopts matches 0 if predicate enchantplus:random_chance/50 if entity @s[nbt={SelectedItem:{tag:{CustomEnchantments:[{id:"MarineGrace",lvl:2}]}}}] run function enchantplus:result/marine_grace/start
