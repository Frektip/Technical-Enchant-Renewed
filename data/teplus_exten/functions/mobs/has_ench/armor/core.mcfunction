#Useful enchantments for armor

#HELMET
#Time Breaker
execute if score #tmbrk Enchopts matches 0 if data entity @s ArmorItems[3].tag.CustomEnchantments[{id:"TimeBreaker"}] run function teplus_exten:mobs/has_ench/armor/time_breaker/start
#Anti-Explosion
execute if score #antexp Enchopts matches 0 if data entity @s ArmorItems[3].tag.CustomEnchantments[{id:"AntiExplosion"}] run function enchantplus:result/anti-explosion
#Magnet
execute if score #mgnt Enchopts matches 0 if data entity @s ArmorItems[3].tag.CustomEnchantments[{id:"Magnet"}] run tp @e[type=item,nbt={Age:2s},distance=..7] @s

#CHESTPLATE
#Anti-Venom
execute if score #antvn Enchopts matches 0 if data entity @s ArmorItems[2].tag.CustomEnchantments[{id:"AntiVenom"}] run function teplus_exten:mobs/has_ench/armor/anti_venom

#LEGGINGS
#Last Life
execute if score #lstlf Enchopts matches 0 if data entity @s ArmorItems[1].tag.CustomEnchantments[{id:"LastLife"}] run function teplus_exten:mobs/has_ench/armor/last_life/ini
#Leaping
execute if score #leap Enchopts matches 0 if data entity @s ArmorItems[1].tag.CustomEnchantments[{id:"Leaping"}] unless entity @s[nbt={ActiveEffects:[{Id:8}]}] run function teplus_exten:mobs/has_ench/armor/leaping
#Recovery
execute if score #rcv Enchopts matches 0 if data entity @s ArmorItems[1].tag.CustomEnchantments[{id:"Recovery"}] unless entity @s[nbt={ActiveEffects:[{Id:10}]}] run function teplus_exten:mobs/has_ench/armor/recovery

#BOOTS
#Lava Walker
execute if score #lvwk Enchopts matches 0 if data entity @s ArmorItems[0].tag.CustomEnchantments[{id:"LavaWalker"}] run function enchantplus:result/lavawalker

#Sky Walk
execute if score #skwk Enchopts matches 0 if data entity @s ArmorItems[0].tag.CustomEnchantments[{id:"SkyWalk"}] run function teplus_exten:mobs/has_ench/armor/sky_walk/init

