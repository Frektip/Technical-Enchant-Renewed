# Initalize the storage
data modify storage teplus:chest Copy set value []

# Build the main enchantment storage
execute store result score $out teplus.rng run random value 1..10
scoreboard players set #teplus.ench_type teplus.data 0

# 90% chance to get a custom enchantment
execute if score $out teplus.rng matches 2..10 run data modify storage teplus:chest Copy append from storage teplus:register Custom[].Enchantment[].Strong[]
execute if score $out teplus.rng matches 2..10 run data modify storage teplus:chest Copy append from storage teplus:register Custom[].Enchantment[].Average[]
execute if score $out teplus.rng matches 2..10 run data modify storage teplus:chest Copy append from storage teplus:register Custom[].Enchantment[].Low[]

# 10% chance to get a custom curse
execute if score $out teplus.rng matches 1 run data modify storage teplus:chest Copy append from storage teplus:register Custom[].Curse[]
execute if score $out teplus.rng matches 1 run scoreboard players set #teplus.ench_type teplus.data 1

# Remove uneccessary data
data remove storage teplus:chest Copy[].Sell
data remove storage teplus:chest Copy[].ForItem
data remove storage teplus:chest Copy[].Rarity
data remove storage teplus:chest Copy[].NoEnch
data remove storage teplus:chest Copy[].NoDrop
data remove storage teplus:chest Copy[].Incompatible
data remove storage teplus:chest Copy[].Charge

# Cicle though the array
function teplus:chests/create_loot/system/loop_build

# Remove uneccessary data
data remove storage teplus:chest Result[].Enabled
data remove storage teplus:chest Result[].Structure

# Clear Struct value from Storage
data remove storage teplus:chest Struct
