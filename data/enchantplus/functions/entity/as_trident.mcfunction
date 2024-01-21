execute unless block ~ ~-1 ~ #enchantplus:not_solid run tag @s add teplus.trident_land

execute if score #wtjt Enchopts matches 0 if entity @s[tag=!teplus.trident_land,nbt={item:{tag:{CustomEnchantments:[{id:"Waterjet"}]}}}] as @e[type=!#enchantplus:antisoul,distance=0.01..7,sort=nearest,nbt={HurtTime:10s}] at @s run function enchantplus:result/waterjet
execute if score #pst Enchopts matches 0 if entity @s[tag=!teplus.trident_land,nbt={item:{tag:{CustomEnchantments:[{id:"PoisonAspect"}]}}}] run function enchantplus:result/poison_aspect/trident/ini

function #enchantplus:as_trident
