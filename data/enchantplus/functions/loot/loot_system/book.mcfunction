##----------------CHECK ENCHANTING CONDITIONS----------------##
#FIRST STRONG ENCHANTMENTS
execute if entity @e[type=marker,tag=!is_enchanting,tag=teplus.tier3,distance=..1] if score $LapisCount tep.count matches 3.. if entity @p[distance=..10,level=30..,scores={Drop=1..}] run function enchantplus:loot/loot_system/prepare/book/strong

#SECOND AVERAGE ENCHANTMENTS
execute if entity @e[type=marker,tag=!is_enchanting,tag=teplus.tier2,distance=..1] if score $LapisCount tep.count matches 2.. if entity @p[distance=..10,level=20..,scores={Drop=1..}] run function enchantplus:loot/loot_system/prepare/book/average

#THIRD LOW ENCHATMENTS
execute if entity @e[type=marker,tag=!is_enchanting,tag=teplus.tier1,distance=..1] if score $LapisCount tep.count matches 1.. if entity @p[distance=..10,level=10..,scores={Drop=1..}] run function enchantplus:loot/loot_system/prepare/book/low