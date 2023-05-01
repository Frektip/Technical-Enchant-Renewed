#Copy from the Register Storage
data modify storage teplus:chest Copy set value []
#Add it based on the structure rarity
execute if entity @s[tag=is_enchantment,tag=tepxc.strong] run data modify storage teplus:chest Copy append from storage teplus:register Custom[].Enchantment[].Strong[]
execute if entity @s[tag=is_enchantment,tag=tepxc.average] run data modify storage teplus:chest Copy append from storage teplus:register Custom[].Enchantment[].Average[]
execute if entity @s[tag=is_enchantment,tag=tepxc.low] run data modify storage teplus:chest Copy append from storage teplus:register Custom[].Enchantment[].Low[]
execute if entity @s[tag=is_curse] run data modify storage teplus:chest Copy append from storage teplus:register Custom[].Curse[]

#Remove uneccessary data
data remove storage teplus:chest Copy[].Sell
data remove storage teplus:chest Copy[].ForItem
data remove storage teplus:chest Copy[].Rarity
data remove storage teplus:chest Copy[].NoEnch
data remove storage teplus:chest Copy[].NoDrop
data remove storage teplus:chest Copy[].Incompatible
data remove storage teplus:chest Copy[].Charge

#Cicle though the array
function teplus_exten:chests/create_loot/system/loop_build

#Remove Unnecesarry data
data remove storage teplus:chest Result[].Enabled
data remove storage teplus:chest Result[].Structure