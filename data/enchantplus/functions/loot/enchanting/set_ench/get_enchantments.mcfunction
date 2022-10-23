#Copy from the Register Storage
data modify storage teplus:loot Copy set value []
execute if score #teplus.rarity teplus.data matches 3.. run data modify storage teplus:loot Copy append from storage teplus:register Custom[].Enchantment[].Strong[]
execute if score #teplus.rarity teplus.data matches 2.. run data modify storage teplus:loot Copy append from storage teplus:register Custom[].Enchantment[].Average[]
execute if score #teplus.rarity teplus.data matches 1.. run data modify storage teplus:loot Copy append from storage teplus:register Custom[].Enchantment[].Low[]


#Remove uneccessary data
data remove storage teplus:loot Copy[].Sell

#Cicle though the array
function enchantplus:loot/enchanting/set_ench/loop_build

#Remove Enabled data
data remove storage teplus:loot Enchantments[].Enabled
data remove storage teplus:loot Enchantments[].ForItem
data remove storage teplus:loot Enchantments[].Rarity