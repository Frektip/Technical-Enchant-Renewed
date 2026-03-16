data modify storage teplus:villagers Build set from storage teplus:villagers Copy[0]

# Detect if the enchantment is enabled
execute store result score #is_enabled teplus.data run data get storage teplus:villagers Build.Enabled

# IF not, then remove the current "Build" enchantment from the list (skip it)
execute if score #is_enabled teplus.data matches 0 run data remove storage teplus:loot Build

# Check if the enchantment has the "Sell" nbt, otherwise skip it
execute unless data storage teplus:villagers Build.Sell run data remove storage teplus:villagers Build

# Success
execute if data storage teplus:villagers Build.id run function teplus:villagers/generate_trades/system/success

# Remove "build.done" tag, so it can continue with the next one
tag @s remove build.done

# Loop until the Copy Storage is empy
data remove storage teplus:villagers Copy[0]
execute if data storage teplus:villagers Copy[0].id run function teplus:villagers/generate_trades/system/loop_build