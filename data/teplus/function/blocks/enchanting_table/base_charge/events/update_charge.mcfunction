# Add the base charge, if the item was correct th evalue updates
# otherwise it remains in 0
scoreboard players operation @s teplus.base_charge += #add.bachrg teplus.base_charge

# Limit the capacity based on the tiers (bookshelves being around)
# if the base charge score is more than the one allowed for each tier, change its state to full
execute if score @s[tag=teplus.tier1] teplus.chrgbksf.qnty matches ..11 if score @s teplus.base_charge matches 101.. run function teplus:blocks/enchanting_table/base_charge/is_full
execute if score @s[tag=teplus.tier2] teplus.chrgbksf.qnty matches ..17 if score @s teplus.base_charge matches 201.. run function teplus:blocks/enchanting_table/base_charge/is_full
execute if score @s[tag=teplus.tier3] teplus.chrgbksf.qnty matches ..23 if score @s teplus.base_charge matches 301.. run function teplus:blocks/enchanting_table/base_charge/is_full
execute if score @s[tag=teplus.tier4] teplus.chrgbksf.qnty matches ..29 if score @s teplus.base_charge matches 401.. run function teplus:blocks/enchanting_table/base_charge/is_full
execute if score @s[tag=teplus.tier5] teplus.chrgbksf.qnty matches 30.. if score @s teplus.base_charge matches 501.. run function teplus:blocks/enchanting_table/base_charge/is_full

# In case it's not full, remove the item and show particles
execute unless entity @s[tag=teplus.charge_full] run function teplus:blocks/enchanting_table/base_charge/events/item_consumed

scoreboard players set #add.bachrg teplus.base_charge 0