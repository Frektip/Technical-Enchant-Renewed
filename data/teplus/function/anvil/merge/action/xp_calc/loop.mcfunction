# Get the first enchantment
data modify storage teplus:cost Current[] set from storage teplus:cost Available[0]

# Get the level of the current enchantment and add it to the fake player
execute store result score @s teplus.anvil.cost run data get storage teplus:cost Current[0].lvl
execute if score @s teplus.anvil.cost matches 2.. run scoreboard players add #per_lvl_added teplus.anvil.cost 1
scoreboard players operation $Sum teplus.anvil.cost += @s teplus.anvil.cost

# Loop again until all enchantments were covered
execute if score @s teplus.anvil.ench_count matches 1.. run data remove storage teplus:cost Available[0]
scoreboard players remove @s teplus.anvil.ench_count 1

# Repeat if it is still greater than 1
execute if score @s teplus.anvil.ench_count matches 1.. run function teplus:anvil/merge/action/xp_calc/loop