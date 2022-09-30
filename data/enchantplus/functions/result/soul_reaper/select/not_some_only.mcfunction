#Lose Durability
execute if entity @s[predicate=enchantplus:random_chance/5,nbt={Inventory:[{Slot:-106b,tag:{CustomEnchantments:[{id:"SoulReaper",lvl:1}]}}]}] if entity @e[type=!#enchantplus:antisoul,type=!#enchantplus:exclude_srtb,distance=0.5..5] run function enchantplus:result/soul_reaper/lose_durability
execute if entity @s[predicate=enchantplus:random_chance/5,nbt={Inventory:[{Slot:-106b,tag:{CustomEnchantments:[{id:"SoulReaper",lvl:2}]}}]}] if entity @e[type=!#enchantplus:antisoul,type=!#enchantplus:exclude_srtb,distance=0.5..7] run function enchantplus:result/soul_reaper/lose_durability
execute if entity @s[predicate=enchantplus:random_chance/5,nbt={Inventory:[{Slot:-106b,tag:{CustomEnchantments:[{id:"SoulReaper",lvl:3}]}}]}] if entity @e[type=!#enchantplus:antisoul,type=!#enchantplus:exclude_srtb,distance=0.5..9] run function enchantplus:result/soul_reaper/lose_durability

#Damage entity
execute if entity @s[nbt={Inventory:[{Slot:-106b,tag:{CustomEnchantments:[{id:"SoulReaper",lvl:1}]}}]}] as @e[type=!#enchantplus:antisoul,type=!#enchantplus:exclude_srtb,limit=3,distance=0.5..5] at @s run function enchantplus:result/soul_reaper/action 
execute if entity @s[nbt={Inventory:[{Slot:-106b,tag:{CustomEnchantments:[{id:"SoulReaper",lvl:2}]}}]}] as @e[type=!#enchantplus:antisoul,type=!#enchantplus:exclude_srtb,limit=5,distance=0.5..7] at @s run function enchantplus:result/soul_reaper/action 
execute if entity @s[nbt={Inventory:[{Slot:-106b,tag:{CustomEnchantments:[{id:"SoulReaper",lvl:3}]}}]}] as @e[type=!#enchantplus:antisoul,type=!#enchantplus:exclude_srtb,limit=7,distance=0.5..9] at @s run function enchantplus:result/soul_reaper/action 
