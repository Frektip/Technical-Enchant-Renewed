#Just for enchantments with useful special habilities in the offhand
#Soul Reaper
execute if score #slrp Enchopts matches 0 if data entity @s HandItems[1].tag.CustomEnchantments[{id:"SoulReaper"}] run function teplus_exten:mobs/has_ench/offhand/soul_reaper/method

#Anti-Explosion
execute if score #antexp Enchopts matches 0 if data entity @s HandItems[1].tag.CustomEnchantments[{id:"AntiExplosion"}] run function enchantplus:result/anti-explosion

#Peaks
execute if score #pks Enchopts matches 0 if data entity @s HandItems[1].tag.CustomEnchantments[{id:"Peaks"}] run function teplus_exten:mobs/has_ench/peaks

#Splatter
execute if score #sptr Enchopts matches 0 if data entity @s HandItems[1].tag.CustomEnchantments[{id:"Splatter"}] run function teplus_exten:mobs/has_ench/offhand/splatter/try