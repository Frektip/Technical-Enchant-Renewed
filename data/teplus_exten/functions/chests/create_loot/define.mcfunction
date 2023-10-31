#Initalize the storage
data modify storage teplus:chest Copy set value []

#Build the main enchantment storage

execute store result score $out random run random value 1..10
scoreboard players set #teplus.ench_type teplus.data 0

execute if score $out random matches 2..10 run data modify storage teplus:chest Copy append from storage teplus:register Custom[].Enchantment[].Strong[]
execute if score $out random matches 2..10 run data modify storage teplus:chest Copy append from storage teplus:register Custom[].Enchantment[].Average[]
execute if score $out random matches 2..10 run data modify storage teplus:chest Copy append from storage teplus:register Custom[].Enchantment[].Low[]

execute if score $out random matches 1 run data modify storage teplus:chest Copy append from storage teplus:register Custom[].Curse[]
execute if score $out random matches 1 run scoreboard players set #teplus.ench_type teplus.data 1

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

#Clear Struct Storage
data remove storage teplus:chest Struct
