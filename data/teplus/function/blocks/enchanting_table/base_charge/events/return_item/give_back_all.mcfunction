##############################################################
# This function runs whenever the enchanting table is broken
# in which case, we need to return all the items based on the
# current base charge value
# Basically we lower each Tier until we hit Tier 1 and stop
##############################################################

# Return the correct amount of items based on the Tier
tag @s[tag=teplus.tier5,scores={teplus.base_charge=401..}] remove teplus.tier5
tag @s[tag=teplus.tier4,scores={teplus.base_charge=301..400}] remove teplus.tier4
tag @s[tag=teplus.tier3,scores={teplus.base_charge=201..300}] remove teplus.tier3
tag @s[tag=teplus.tier2,scores={teplus.base_charge=101..200}] remove teplus.tier2
tag @s[tag=teplus.tier1,scores={teplus.base_charge=1..100}] remove teplus.tier1

# Loop this function bit by bit to ensure all the items get the correct count based on the Base Charge
function teplus:blocks/enchanting_table/base_charge/events/return_item/determine_count

execute if score @s teplus.base_charge matches 1.. run function teplus:blocks/enchanting_table/base_charge/events/return_item/give_back_all