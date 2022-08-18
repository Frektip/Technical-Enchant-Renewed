
##===============================CHECK CONDITIONS===============================##
#First: if the enchantment is enabled
#Second: if the enchanting tier score [according to enchantment rarity]
# -#teplus.rarity teplus.data 
#     1..=at least need a Tier 1 enchanting setup (low enchantment)
#     2..=at least need a Tier 2 enchanting setup (average enchantment)
#     3..=at least need a Tier 3 enchanting setup (strong enchantment)
##==============================================================================##

execute if score #atkb Enchopts matches 0 if score #teplus.rarity teplus.data matches 2.. run data modify storage teplus:loot Enchantments append value {id:"AntiKnockback",lvl:1}
execute if score #atkb Enchopts matches 0 if score #teplus.rarity teplus.data matches 2.. run data modify storage teplus:loot Enchantments append value {id:"AntiKnockback",lvl:2}

execute if score #hdns Enchopts matches 0 if score #teplus.rarity teplus.data matches 2.. run data modify storage teplus:loot Enchantments append value {id:"HardnessPlus",lvl:1}
execute if score #hdns Enchopts matches 0 if score #teplus.rarity teplus.data matches 2.. run data modify storage teplus:loot Enchantments append value {id:"HardnessPlus",lvl:2}
execute if score #hdns Enchopts matches 0 if score #teplus.rarity teplus.data matches 2.. run data modify storage teplus:loot Enchantments append value {id:"HardnessPlus",lvl:3}

execute if score #pks Enchopts matches 0 if score #teplus.rarity teplus.data matches 3.. run data modify storage teplus:loot Enchantments append value {id:"Peaks",lvl:1}

execute if score #trsf Enchopts matches 0 if score #teplus.rarity teplus.data matches 2.. run data modify storage teplus:loot Enchantments append value {id:"TurtleStiffness",lvl:1}