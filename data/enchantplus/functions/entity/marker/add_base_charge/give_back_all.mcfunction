#Return the correct amount of items based on the Tier
tag @s[tag=teplus.tier5,scores={BaseCharge=401..}] remove teplus.tier5
tag @s[tag=teplus.tier4,scores={BaseCharge=301..400}] remove teplus.tier4
tag @s[tag=teplus.tier3,scores={BaseCharge=201..300}] remove teplus.tier3
tag @s[tag=teplus.tier2,scores={BaseCharge=101..200}] remove teplus.tier2
tag @s[tag=teplus.tier1,scores={BaseCharge=1..100}] remove teplus.tier1

#Loop this function bit by bit to ensure all the items get the correct count based
# on the Base Charge
function enchantplus:entity/marker/add_base_charge/lower_tier

execute if score @s BaseCharge matches 1.. run function enchantplus:entity/marker/add_base_charge/give_back_all