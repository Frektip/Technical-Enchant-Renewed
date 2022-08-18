
##===============================CHECK CONDITIONS===============================##
#First: if the enchantment is enabled
#Second: if the enchanting tier score [according to enchantment rarity]
# -#teplus.rarity teplus.data 
#     1..=at least need a Tier 1 enchanting setup (low enchantment)
#     2..=at least need a Tier 2 enchanting setup (average enchantment)
#     3..=at least need a Tier 3 enchanting setup (strong enchantment)
##==============================================================================##

execute if score #aksp Enchopts matches 0 if score #teplus.rarity teplus.data matches 3.. run data modify storage teplus:loot Enchantments append value {id:"AttackSpeed",lvl:1}
execute if score #aksp Enchopts matches 0 if score #teplus.rarity teplus.data matches 3.. run data modify storage teplus:loot Enchantments append value {id:"AttackSpeed",lvl:2}
execute if score #aksp Enchopts matches 0 if score #teplus.rarity teplus.data matches 3.. run data modify storage teplus:loot Enchantments append value {id:"AttackSpeed",lvl:3}

execute if score #mrgc Enchopts matches 0 if score #teplus.rarity teplus.data matches 1.. run data modify storage teplus:loot Enchantments append value {id:"MarineGrace",lvl:1}
execute if score #mrgc Enchopts matches 0 if score #teplus.rarity teplus.data matches 1.. run data modify storage teplus:loot Enchantments append value {id:"MarineGrace",lvl:2}

execute if score #pst Enchopts matches 0 if score #teplus.rarity teplus.data matches 1.. run data modify storage teplus:loot Enchantments append value {id:"PoisonAspect",lvl:1}
execute if score #pst Enchopts matches 0 if score #teplus.rarity teplus.data matches 1.. run data modify storage teplus:loot Enchantments append value {id:"PoisonAspect",lvl:2}
execute if score #pst Enchopts matches 0 if score #teplus.rarity teplus.data matches 1.. run data modify storage teplus:loot Enchantments append value {id:"PoisonAspect",lvl:3}

execute if score #wtjt Enchopts matches 0 if score #teplus.rarity teplus.data matches 3.. run data modify storage teplus:loot Enchantments append value {id:"Waterjet",lvl:1}

execute if score #xpbt Enchopts matches 0 if score #teplus.rarity teplus.data matches 3.. run data modify storage teplus:loot Enchantments append value {id:"XpBoost",lvl:1}
execute if score #xpbt Enchopts matches 0 if score #teplus.rarity teplus.data matches 3.. run data modify storage teplus:loot Enchantments append value {id:"XpBoost",lvl:2}
execute if score #xpbt Enchopts matches 0 if score #teplus.rarity teplus.data matches 3.. run data modify storage teplus:loot Enchantments append value {id:"XpBoost",lvl:3}