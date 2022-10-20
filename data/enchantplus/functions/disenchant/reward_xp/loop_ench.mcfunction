#Get the first enchantment to build the Lore line by line
data modify storage teplus:diench Current[] set from storage teplus:diench Enchantments[0]

#Check first if the current enchantment isn't a vanilla curse
execute if data storage teplus:diench Current[{id:"minecraft:vanishing_curse"}] run function enchantplus:disenchant/reward_xp/ignore_curse
execute if data storage teplus:diench Current[{id:"minecraft:binding_curse"}] run function enchantplus:disenchant/reward_xp/ignore_curse

#Get the level of the current enchantment and add it to the fake player
execute store result score @s teplus.diench run data get storage teplus:diench Current[0].lvl
scoreboard players operation $tep.diench teplus.diench += @s teplus.diench

#Loop again until all enchantments were covered
execute if score @s teplus.cencnt matches 1.. run data remove storage teplus:diench Enchantments[0]
scoreboard players remove @s teplus.cencnt 1
#Repeat if it is still greater than 1
execute if score @s teplus.cencnt matches 1.. run function enchantplus:disenchant/reward_xp/loop_ench