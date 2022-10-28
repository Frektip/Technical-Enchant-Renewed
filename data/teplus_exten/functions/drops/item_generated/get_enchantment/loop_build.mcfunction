data modify storage teplus:loot Build set from storage teplus:loot Copy[0]

#Detect if the enchantment is enabled
execute store result score #is_enabled teplus.data run data get storage teplus:loot Build.Enabled

# IF not, then remove the current "Build" enchantment from the list
# (skip it)
execute if score #is_enabled teplus.data matches 1 run data remove storage teplus:loot Build

#Detect if the enchantment can be obtained from an enchanted mob
# IF true, then remove the current "Build" enchantment from the list
# (skip it)
execute if data storage teplus:loot Build.NoDrop run data remove storage teplus:loot Build

#If it is an enchanted book, then always run the success function
execute if data storage teplus:loot Build.id run function teplus_exten:drops/item_generated/get_enchantment/success

#Loop until the Copy Storage is empy
data remove storage teplus:loot Copy[0]
execute if data storage teplus:loot Copy[0].id run function teplus_exten:drops/item_generated/get_enchantment/loop_build