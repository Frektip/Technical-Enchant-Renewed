# Check if a player drops an item near the table, at leat in Tier 1
execute if entity @s[tag=!teplus.charge_fail,scores={teplus.chrgbksf.qnty=6..}] if score @p teplus.drop matches 1.. if entity @e[type=item,sort=nearest,distance=..2] run function teplus:blocks/enchanting_table/base_charge/watch/main

execute if entity @s[tag=teplus.charge_fail] unless entity @e[type=item,distance=..2] run tag @s remove teplus.charge_fail

# In case it was full and needs to get updated
execute if entity @s[tag=teplus.charge_full] run function teplus:blocks/enchanting_table/base_charge/watch/debug_charge

# Show the the Base Charge to the player
execute if score @s teplus.chrgbksf.qnty matches 6.. if entity @a[distance=..2,predicate=teplus:player/is_sneaking] run function teplus:blocks/enchanting_table/base_charge/events/show_to_player

# Set the score to 0 if it is less than 0
scoreboard players set @s[scores={teplus.base_charge=..-1}] teplus.base_charge 0