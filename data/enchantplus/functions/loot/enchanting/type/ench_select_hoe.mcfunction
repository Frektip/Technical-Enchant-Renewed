
##===============================CHECK CONDITIONS===============================##
#First: if the enchantment is enabled
#Second: if the enchanting tier score [according to enchantment rarity]
# -#teplus.rarity teplus.data 
#     1..=at least need a Tier 1 enchanting setup (low enchantment)
#     2..=at least need a Tier 2 enchanting setup (average enchantment)
#     3..=at least need a Tier 3 enchanting setup (strong enchantment)
##==============================================================================##

execute if score #gndtl Enchopts matches 0 if score #teplus.rarity teplus.data matches 1.. run data modify storage teplus:loot Enchantments append value {id:"GrandTilling",lvl:1}

execute if score #hrvpl Enchopts matches 0 if score #teplus.rarity teplus.data matches 1.. run data modify storage teplus:loot Enchantments append value {id:"HarvestingPlus",lvl:1}

execute if score #rplt Enchopts matches 0 if score #teplus.rarity teplus.data matches 3.. run data modify storage teplus:loot Enchantments append value {id:"Replant",lvl:1}

execute if score #sytr Enchopts matches 0 if score #teplus.rarity teplus.data matches 1.. run data modify storage teplus:loot Enchantments append value {id:"Scyther",lvl:1}
execute if score #sytr Enchopts matches 0 if score #teplus.rarity teplus.data matches 1.. run data modify storage teplus:loot Enchantments append value {id:"Scyther",lvl:2}

execute if score #slrp Enchopts matches 0 if score #teplus.rarity teplus.data matches 3.. run data modify storage teplus:loot Enchantments append value {id:"SoulReaper",lvl:1}
execute if score #slrp Enchopts matches 0 if score #teplus.rarity teplus.data matches 3.. run data modify storage teplus:loot Enchantments append value {id:"SoulReaper",lvl:2}
execute if score #slrp Enchopts matches 0 if score #teplus.rarity teplus.data matches 3.. run data modify storage teplus:loot Enchantments append value {id:"SoulReaper",lvl:3}