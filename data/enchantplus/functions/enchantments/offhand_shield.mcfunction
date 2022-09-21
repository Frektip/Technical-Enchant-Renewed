#Hoe
execute if score #hrvpl Enchopts matches 0 as @s[nbt={Inventory:[{Slot:-106b,tag:{CustomEnchantments:[{id:"HarvestingPlus",lvl:1}]}}]}] at @s run function enchantplus:result/harvestingplus
execute if score #slrp Enchopts matches 0 as @s[nbt={Inventory:[{Slot:-106b,tag:{CustomEnchantments:[{id:"SoulReaper"}]}}]}] at @s run function enchantplus:result/soul_reaper/method

#Bow
execute if score #antexp Enchopts matches 0 as @s[nbt={Inventory:[{Slot:-106b,tag:{CustomEnchantments:[{id:"AntiExplosion",lvl:1}]}}]}] at @s run function enchantplus:result/anti-explosion

#Fishing Rod
execute if score #sptr Enchopts matches 0 as @s[nbt={Inventory:[{Slot:-106b,tag:{CustomEnchantments:[{id:"Splatter"}]}}]}] at @s run function enchantplus:result/splatter/ini

#Curse
execute if entity @s[nbt={Inventory:[{Slot:-106b,tag:{CustomCurse:{Fear:1}}}]}] run function enchantplus:result/fear/init