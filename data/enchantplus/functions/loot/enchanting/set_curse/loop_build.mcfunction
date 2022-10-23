data modify storage teplus:loot Build set from storage teplus:loot Copy[0]

#In case we are enchanting another item (not a book) run
# another function to get it's enchantments correctly
execute if entity @s[tag=teplus.loot_is_item] run function enchantplus:loot/enchanting/set_curse/get_item

#If the enchantment is enabled, then run a function
# This also runs only if the enchantment is compatible
# with the current enchantment
execute if entity @s[tag=teplus.loot_is_book] run function enchantplus:loot/enchanting/set_curse/success

#Loop until the Copy Storage is empy
data remove storage teplus:loot Copy[0]
execute if data storage teplus:loot Copy[0] run function enchantplus:loot/enchanting/set_curse/loop_build