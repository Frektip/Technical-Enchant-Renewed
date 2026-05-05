# Store the current base charge value in a temp fake player
scoreboard players operation #sum.bachrg teplus.base_charge = @s teplus.base_charge

# Keep the base_charge score based on the tier
scoreboard players set @s[tag=teplus.tier1] teplus.base_charge 100
scoreboard players set @s[tag=teplus.tier2] teplus.base_charge 200
scoreboard players set @s[tag=teplus.tier3] teplus.base_charge 300
scoreboard players set @s[tag=teplus.tier4] teplus.base_charge 400
scoreboard players set @s[tag=teplus.tier5] teplus.base_charge 500

# In case the previous value was greater than the max allowed, return the items
execute if score #sum.bachrg teplus.base_charge > @s teplus.base_charge run function teplus:blocks/enchanting_table/base_charge/events/exceeded_charge

# Add tag to know the enchanting table is full
tag @s add teplus.charge_full