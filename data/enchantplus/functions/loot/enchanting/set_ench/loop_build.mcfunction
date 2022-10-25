data modify storage teplus:loot Build set from storage teplus:loot Copy[0]

#Detect if the enchantment is enabled
execute store result score #is_enabled teplus.data run data get storage teplus:loot Build.Enabled

# IF not, then remove the current "Build" enchantment from the list
# (skip it)
execute if score #is_enabled teplus.data matches 1 run data remove storage teplus:loot Build

#Detect if the enchantment can be obtained from the enchanting table
# IF true, then remove the current "Build" enchantment from the list
# (skip it)
execute if data storage teplus:loot Build.NoEnch run data remove storage teplus:loot Build

#In case we are enchanting another item (not a book) run
# another function to get it's enchantments correctly
execute if entity @s[tag=teplus.loot_is_item] run function enchantplus:loot/enchanting/set_ench/get_item

#If it is an enchanted book, then always run the success function
execute if entity @s[tag=teplus.loot_is_book] run function enchantplus:loot/enchanting/set_ench/success

#Loop until the Copy Storage is empy
data remove storage teplus:loot Copy[0]
execute if data storage teplus:loot Copy[0].id run function enchantplus:loot/enchanting/set_ench/loop_build