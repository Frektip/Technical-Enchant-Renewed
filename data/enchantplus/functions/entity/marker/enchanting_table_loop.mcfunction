#Store the number of charged bookshelf if it detects any nearby
#The area is 2 and 3, so the bookshelfs must need to be one block away from the
# enchanting table
execute store result score @s tep.CbBf.qnty if entity @e[tag=teplus.charged_bookshelf,distance=2..5]

#Add a tag per each enchanting tier
execute if score @s tep.CbBf.qnty matches 6.. run tag @s add teplus.tier1
execute if score @s tep.CbBf.qnty matches 12.. run tag @s add teplus.tier2
execute if score @s tep.CbBf.qnty matches 18.. run tag @s add teplus.tier3
execute if score @s tep.CbBf.qnty matches 24.. run tag @s add teplus.tier4
execute if score @s tep.CbBf.qnty matches 30.. run tag @s add teplus.tier5

#Remove the tag that set the enchanting table level
#6 for level 1
#12 for level 2
#18 for level 3
execute if score @s[tag=teplus.tier1] tep.CbBf.qnty matches ..5 run tag @s remove teplus.tier1
execute if score @s[tag=teplus.tier2] tep.CbBf.qnty matches ..11 run tag @s remove teplus.tier2
execute if score @s[tag=teplus.tier3] tep.CbBf.qnty matches ..17 run tag @s remove teplus.tier3
execute if score @s[tag=teplus.tier4] tep.CbBf.qnty matches ..23 run tag @s remove teplus.tier4
execute if score @s[tag=teplus.tier5] tep.CbBf.qnty matches ..29 run tag @s remove teplus.tier5

#Particle Animation when it reaches Tier 5
tp @s[tag=teplus.tier5,tag=!speed_enchanted] ~ ~ ~ ~-8 ~
execute if entity @s[tag=teplus.tier5,tag=speed_enchanted] run function enchantplus:entity/marker/speed_center

execute if entity @s[tag=teplus.tier5] run particle enchanted_hit ^1 ^.2 ^ 0 0 0 0.03 5
execute if entity @s[tag=teplus.tier5] run particle enchanted_hit ^-1 ^.2 ^ 0 0 0 0.03 5

execute if entity @s[tag=teplus.tier5] run particle enchanted_hit ^1 ^.2 ^1 0 0 0 0.03 5
execute if entity @s[tag=teplus.tier5] run particle enchanted_hit ^-1 ^.2 ^-1 0 0 0 0.03 5
execute if entity @s[tag=teplus.tier5] run particle enchanted_hit ^-1 ^.2 ^1 0 0 0 0.03 5
execute if entity @s[tag=teplus.tier5] run particle enchanted_hit ^1 ^.2 ^-1 0 0 0 0.03 5

execute if entity @s[tag=teplus.tier5,tag=!tier.up] run function enchantplus:entity/armor_stand/table_rotate/tier_up
execute if entity @s[tag=!teplus.tier5,tag=tier.up] run function enchantplus:entity/armor_stand/table_rotate/tier_down

#In case there is an item near it to increase it's base charge
execute if entity @s[tag=!charge_fail,scores={tep.CbBf.qnty=6..}] if score @p Drop matches 1.. if entity @e[type=item,sort=nearest,distance=..2] run function enchantplus:entity/marker/add_base_charge/init

execute if entity @s[tag=charge_fail] unless entity @e[type=item,distance=..2] run tag @s remove charge_fail

#In case it is full and need to get updated
execute if entity @s[tag=ch.full] run function enchantplus:entity/marker/add_base_charge/debug_charge

#Show the the Base Charge to the player
execute if score @s tep.CbBf.qnty matches 6.. if entity @a[distance=..2,predicate=enchantplus:is_sneaking] run function enchantplus:entity/marker/show_to_player

#Set the score to 0 if it is less than 0
scoreboard players set @s[scores={BaseCharge=..-1}] BaseCharge 0

#If the enchanting table is removed
execute unless block ~ ~ ~ enchanting_table run function enchantplus:entity/marker/enchanting_table_clear