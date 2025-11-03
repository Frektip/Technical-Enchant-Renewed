# Store the number of charged bookshelfs, if it detects any nearby
# The area is 2 and 3, so the bookshelfs must need to be one block away from the enchanting table
execute store result score @s teplus.chrgbksf.qnty if entity @e[tag=teplus.charged_bookshelf,distance=2..5]

# Update tags based on the score
function teplus:blocks/enchanting_table/update/tags

# When enchanting table is broken
execute unless block ~ ~ ~ enchanting_table run function teplus:blocks/enchanting_table/break