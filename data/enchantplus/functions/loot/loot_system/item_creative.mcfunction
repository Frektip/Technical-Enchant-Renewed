##----------------CHECK ENCHANTING CONDITIONS----------------##
#FIRST STRONG ENCHANTMENTS
execute if entity @e[type=marker,tag=!is_enchanting,tag=teplus.tier3,tag=teplus.tier2,tag=teplus.tier1,distance=..1] if entity @p[gamemode=creative,distance=..10,scores={Drop=1..}] run function enchantplus:loot/loot_system/prepare/strong_setup

#SECOND AVERAGE ENCHANTMENTS
execute if entity @e[type=marker,tag=!is_enchanting,tag=!teplus.tier3,tag=teplus.tier2,tag=teplus.tier1,distance=..1] if entity @p[gamemode=creative,distance=..10,scores={Drop=1..}] run function enchantplus:loot/loot_system/prepare/average_setup


#THIRD LOW ENCHATMENTS
execute if entity @e[type=marker,tag=!is_enchanting,tag=!teplus.tier3,tag=!teplus.tier2,tag=teplus.tier1,distance=..1] if entity @p[gamemode=creative,distance=..10,scores={Drop=1..}] run function enchantplus:loot/loot_system/prepare/low_setup
