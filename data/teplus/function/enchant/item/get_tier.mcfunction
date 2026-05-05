#------------ Debug Message ------------#
tellraw @a[tag=teplus.debug_mode] [{"text":"TE+» ","color":"#65DAD4","bold":true},{"text":"(Enchanting): ","color":"#24E3F9","italic":true,"bold":false},{"text":"Looking for the Enchanting Setup and levels from the player","color":"gray","italic":true,"bold":false}]
#---------------------------------------#

##----------------CHECK ENCHANTING CONDITIONS-------------------------------------------##
# Creative only
# FIRST STRONG ENCHANTMENTS
execute if entity @e[type=marker,tag=!teplus.is_enchanting,tag=teplus.tier3,tag=teplus.tier2,tag=teplus.tier1,distance=..1] if entity @p[gamemode=creative,distance=..10,scores={teplus.drop=1..}] run return run function teplus:enchant/item/prepare {rarity: 3, tier: "strong"}

# SECOND AVERAGE ENCHANTMENTS
execute if entity @e[type=marker,tag=!teplus.is_enchanting,tag=!teplus.tier3,tag=teplus.tier2,tag=teplus.tier1,distance=..1] if entity @p[gamemode=creative,distance=..10,scores={teplus.drop=1..}] run return run function teplus:enchant/item/prepare {rarity: 2, tier: "average"}

# THIRD LOW ENCHATMENTS
execute if entity @e[type=marker,tag=!teplus.is_enchanting,tag=!teplus.tier3,tag=!teplus.tier2,tag=teplus.tier1,distance=..1] if entity @p[gamemode=creative,distance=..10,scores={teplus.drop=1..}] run return run function teplus:enchant/item/prepare {rarity: 1, tier: "low"}

##--------------------------------------------------------------------------------------##
# Survival only
# FIRST STRONG ENCHANTMENTS
execute if entity @e[type=marker,scores={teplus.base_charge=150..},tag=!teplus.is_enchanting,tag=teplus.tier3,distance=..1] if score @p[distance=..10,scores={teplus.drop=1..}] teplus.player.xp >= #xpstr teplus.player.xp run return run function teplus:enchant/item/prepare {rarity: 3, tier: "strong"}

# SECOND AVERAGE ENCHANTMENTS
execute if entity @e[type=marker,scores={teplus.base_charge=84..},tag=!teplus.is_enchanting,tag=teplus.tier2,distance=..1] if score @p[distance=..10,scores={teplus.drop=1..}] teplus.player.xp >= #xpavr teplus.player.xp run return run function teplus:enchant/item/prepare {rarity: 2, tier: "average"}

# THIRD LOW ENCHATMENTS
execute if entity @e[type=marker,scores={teplus.base_charge=36..},tag=!teplus.is_enchanting,tag=teplus.tier1,distance=..1] if score @p[distance=..10,scores={teplus.drop=1..}] teplus.player.xp >= #xplow teplus.player.xp run function teplus:enchant/item/prepare {rarity: 1, tier: "low"}