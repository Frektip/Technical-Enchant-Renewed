# Store the number of charged bookshelves, if it detects any nearby
# The area is 2 and 3, so the bookshelves must need to be one block away from the enchanting table
execute store result score @s teplus.chrgbksf.qnty if entity @e[tag=teplus.charged_bookshelf,distance=2..5]

# Update tags based on the score
function teplus:blocks/enchanting_table/update/tags

# Check if a player drops an item near the table, at leat in Tier 1
execute if entity @s[tag=!teplus.charge_fail,scores={teplus.chrgbksf.qnty=6..}] if score @p teplus.drop matches 1.. if entity @e[type=item,sort=nearest,distance=..2] run function teplus:blocks/enchanting_table/base_charge/watch/main

execute if entity @s[tag=teplus.charge_fail] unless entity @e[type=item,distance=..2] run tag @s remove teplus.charge_fail

# When enchanting table is broken
execute unless block ~ ~ ~ enchanting_table run function teplus:blocks/enchanting_table/break