#Useful enchantments in the mainhand
#Anti-Explosion
execute if score #antexp Enchopts matches 0 if data entity @s HandItems[0].tag.CustomEnchantments[{id:"AntiExplosion"}] run function enchantplus:result/anti-explosion

#Peaks
execute if score #pks Enchopts matches 0 if data entity @s HandItems[0].tag.CustomEnchantments[{id:"Peaks"}] run function teplus_exten:mobs/has_ench/peaks

#Soul Reaper
execute if score #slrp Enchopts matches 0 if data entity @s HandItems[0].tag.CustomEnchantments[{id:"SoulReaper"}] run function teplus_exten:mobs/has_ench/mainhand/soul_reaper/method

#Splatter
execute if score #sptr Enchopts matches 0 if data entity @s HandItems[0].tag.CustomEnchantments[{id:"Splatter"}] run function teplus_exten:mobs/has_ench/mainhand/splatter/try

#Last Stand
execute if score #lstnd Enchopts matches 0 if data entity @s HandItems[0].tag.CustomEnchantments[{id:"LastStand"}] run function teplus_exten:mobs/has_ench/mainhand/last_stand