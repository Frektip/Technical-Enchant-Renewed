
##===============================CHECK CONDITIONS===============================##
#First: if the enchantment is enabled
#Second: if the enchanting tier score [according to enchantment rarity]
# -#teplus.rarity teplus.data 
#     1..=at least need a Tier 1 enchanting setup (low enchantment)
#     2..=at least need a Tier 2 enchanting setup (average enchantment)
#     3..=at least need a Tier 3 enchanting setup (strong enchantment)
##==============================================================================##

execute if score #antexp Enchopts matches 0 if score #teplus.rarity teplus.data matches 1.. run data modify storage teplus:loot Enchantments append value {id:"AntiExplosion",lvl:1}
execute if score #brvis Enchopts matches 0 if score #teplus.rarity teplus.data matches 1.. run data modify storage teplus:loot Enchantments append value {id:"BrightVision",lvl:1}
execute if score #mgnt Enchopts matches 0 if score #teplus.rarity teplus.data matches 2.. run data modify storage teplus:loot Enchantments append value {id:"Magnet",lvl:1}
execute if score #tmbrk Enchopts matches 0 if score #teplus.rarity teplus.data matches 3.. run data modify storage teplus:loot Enchantments append value {id:"TimeBreaker",lvl:1}
execute if score #tmbrk Enchopts matches 0 if score #teplus.rarity teplus.data matches 3.. run data modify storage teplus:loot Enchantments append value {id:"TimeBreaker",lvl:2}