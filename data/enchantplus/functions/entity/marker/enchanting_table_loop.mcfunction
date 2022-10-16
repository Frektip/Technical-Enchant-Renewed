#Store the number of charged bookshelf if it detects any nearby
#The area is 2 and 3, so the bookshelfs must need to be one block away from the
# enchanting table
scoreboard players set @s tep.CbBf.qnty 0
execute store result score @s tep.CbBf.qnty if entity @e[tag=teplus.charged_bookshelf,distance=2..5]

#Add a tag per each enchanting tier
execute if score @s tep.CbBf.qnty matches 6.. run tag @s add teplus.tier1
execute if score @s tep.CbBf.qnty matches 12.. run tag @s add teplus.tier2
execute if score @s tep.CbBf.qnty matches 18.. run tag @s add teplus.tier3

#Remove the tag that set the enchanting table level
#6 for level 1
#12 for level 2
#18 for level 3
execute if score @s[tag=teplus.tier1] tep.CbBf.qnty matches ..5 run tag @s remove teplus.tier1
execute if score @s[tag=teplus.tier2] tep.CbBf.qnty matches ..11 run tag @s remove teplus.tier2
execute if score @s[tag=teplus.tier3] tep.CbBf.qnty matches ..17 run tag @s remove teplus.tier3

#If the enchanting table is removed
execute unless block ~ ~ ~ enchanting_table run function enchantplus:entity/marker/enchanting_table_clear