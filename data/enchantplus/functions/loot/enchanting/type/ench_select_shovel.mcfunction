
##===============================CHECK CONDITIONS===============================##
#First: if the enchantment is enabled
#Second: if the enchanting tier score [according to enchantment rarity]
# -#teplus.rarity teplus.data 
#     1..=at least need a Tier 1 enchanting setup (low enchantment)
#     2..=at least need a Tier 2 enchanting setup (average enchantment)
#     3..=at least need a Tier 3 enchanting setup (strong enchantment)
##==============================================================================##

execute if score #autsml Enchopts matches 0 if score #teplus.rarity teplus.data matches 2.. run data modify storage teplus:loot Enchantments append value {id:"AutoSmelt",lvl:1}

execute if score #bgpt Enchopts matches 0 if score #teplus.rarity teplus.data matches 1.. run data modify storage teplus:loot Enchantments append value {id:"BigPath",lvl:1}

execute if score #exc Enchopts matches 0 if score #teplus.rarity teplus.data matches 1.. run data modify storage teplus:loot Enchantments append value {id:"Excavator",lvl:1}

execute if score #haste Enchopts matches 0 if score #teplus.rarity teplus.data matches 2.. run data modify storage teplus:loot Enchantments append value {id:"Haste",lvl:1}
execute if score #haste Enchopts matches 0 if score #teplus.rarity teplus.data matches 2.. run data modify storage teplus:loot Enchantments append value {id:"Haste",lvl:2}