#VeinMiner
execute if score #vnmr Enchopts matches 0 if entity @s[nbt={SelectedItem:{tag:{CustomEnchantments:[{id:"VeinMiner"}]}}}] at @e[type=item,sort=nearest,limit=1,tag=teplus.item_veinmin] run function enchantplus:result/vein_miner/ini

#Timber
execute if score #tmbr Enchopts matches 0 if entity @s[nbt={SelectedItem:{tag:{CustomEnchantments:[{id:"Timber"}]}}}] at @e[type=item,sort=nearest,limit=1,tag=teplus.item_timb] run function enchantplus:result/timber/ini

#Haste
execute if score #haste Enchopts matches 0 as @s[nbt={SelectedItem:{tag:{CustomEnchantments:[{id:"Haste"}]}}}] unless entity @s[nbt={ActiveEffects:[{Id:3}]}] run function enchantplus:result/haste

#Hoe 
execute if score #rplt Enchopts matches 0 as @s[nbt={SelectedItem:{tag:{CustomEnchantments:[{id:"Replant",lvl:1}]}}}] run function enchantplus:result/replant/ini
execute if score #hrvpl Enchopts matches 0 as @s[nbt={SelectedItem:{tag:{CustomEnchantments:[{id:"HarvestingPlus",lvl:1}]}}}] at @s run function enchantplus:result/harvestingplus

#Weapons/Sword/Trident/Axe
execute if score #xpbt Enchopts matches 0 as @s[scores={XpBoostKill=1..},nbt={SelectedItem:{tag:{CustomEnchantments:[{id:"XpBoost"}]}}}] at @s run function enchantplus:result/xp_boost
execute if score #lfstl Enchopts matches 0 as @s[scores={LifeStealDealt=200..},nbt={SelectedItem:{tag:{CustomEnchantments:[{id:"LifeSteal",lvl:1}]}}}] at @s run function enchantplus:result/life_steal
execute if score #bobl Enchopts matches 0 as @s[nbt={SelectedItem:{tag:{CustomEnchantments:[{id:"BloodyBlade",lvl:1}]}}}] at @s run function enchantplus:result/bloody_blade/effect
execute if score #lstnd Enchopts matches 0 as @s[nbt={SelectedItem:{tag:{CustomEnchantments:[{id:"LastStand",lvl:1}]}}}] at @s run function enchantplus:result/laststand

#Bow
execute if score #antexp Enchopts matches 0 as @s[nbt={SelectedItem:{tag:{CustomEnchantments:[{id:"AntiExplosion",lvl:1}]}}}] at @s run function enchantplus:result/anti-explosion


#Curse
execute if entity @s[nbt={SelectedItem:{tag:{CustomCurse:[{id:"Fear"}]}}}] run function enchantplus:result/fear/init