#Copy from the Register Storage
data modify storage teplus:villagers Copy set value []
#Add it based on the structure rarity
execute if entity @s[tag=ench_low] run data modify storage teplus:villagers Copy append from storage teplus:register Custom[].Enchantment[].Low[]
execute if entity @s[tag=ench_average] run data modify storage teplus:villagers Copy append from storage teplus:register Custom[].Enchantment[].Average[]
execute if entity @s[tag=ench_strong] run data modify storage teplus:villagers Copy append from storage teplus:register Custom[].Enchantment[].Strong[]

execute if entity @s[tag=is_curse] run data modify storage teplus:villagers Copy append from storage teplus:register Custom[].Curse[]

#Remove uneccessary data
data remove storage teplus:villagers Copy[].ForItem
data remove storage teplus:villagers Copy[].Rarity
data remove storage teplus:villagers Copy[].NoEnch
data remove storage teplus:villagers Copy[].NoDrop
data remove storage teplus:villagers Copy[].Incompatible
data remove storage teplus:villagers Copy[].Structure

#Cicle though the array
function teplus_exten:villagers/generate_trades/system/loop_build

#Remove Unnecesarry data
data remove storage teplus:villagers Result[].Enabled