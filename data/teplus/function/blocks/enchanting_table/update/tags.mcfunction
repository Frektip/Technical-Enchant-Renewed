# Add a tag per each enchanting tier
execute if score @s teplus.chrgbksf.qnty matches 6.. run tag @s add teplus.tier1
execute if score @s teplus.chrgbksf.qnty matches 12.. run tag @s add teplus.tier2
execute if score @s teplus.chrgbksf.qnty matches 18.. run tag @s add teplus.tier3
execute if score @s teplus.chrgbksf.qnty matches 24.. run tag @s add teplus.tier4
execute if score @s teplus.chrgbksf.qnty matches 30.. run tag @s add teplus.tier5

# Remove the tag that set the enchanting table level
#    6 for level 1      #
#   12 for level 2      #
#   18 for level 3      #
#   24 for level 4      #
#   30 for level 5      #
execute if score @s[tag=teplus.tier1] teplus.chrgbksf.qnty matches ..5 run tag @s remove teplus.tier1
execute if score @s[tag=teplus.tier2] teplus.chrgbksf.qnty matches ..11 run tag @s remove teplus.tier2
execute if score @s[tag=teplus.tier3] teplus.chrgbksf.qnty matches ..17 run tag @s remove teplus.tier3
execute if score @s[tag=teplus.tier4] teplus.chrgbksf.qnty matches ..23 run tag @s remove teplus.tier4
execute if score @s[tag=teplus.tier5] teplus.chrgbksf.qnty matches ..29 run tag @s remove teplus.tier5

# Exclusive tier 5 actions
execute if entity @s[tag=teplus.tier5] run function teplus:blocks/enchanting_table/update/tier5_visual

execute if entity @s[tag=teplus.tier5,tag=!teplus.tier5_up] run function teplus:blocks/enchanting_table/update/tier5_up
execute if entity @s[tag=!teplus.tier5,tag=teplus.tier5_up] run function teplus:blocks/enchanting_table/update/tier5_down