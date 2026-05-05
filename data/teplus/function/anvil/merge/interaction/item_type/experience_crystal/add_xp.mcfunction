# Compare if the current max value of the Tier is not reached yet
execute store result score #temp.currentvalue teplus.data run data get entity @s Items[{Slot:2b}].components.minecraft:custom_data.teplus.Content.Value[0]

execute store result score #temp.tier teplus.data run data get entity @s Items[{Slot:2b}].components.minecraft:custom_data.teplus.Content.Tier

# Every level adds 250 to the max value
scoreboard players operation #temp.tier teplus.data *= #250const teplus.data

# Level 1 starts at 450, so we need to add 200 to the initial 250 (independent of the tier)
scoreboard players set @s teplus.anvil.inp2 200
scoreboard players operation @s teplus.anvil.inp2 += #temp.tier teplus.data

# Store the value in the entity (minecart) and compare if the current value is less than the max possible
execute if score #temp.currentvalue teplus.data < @s teplus.anvil.inp2 run return run function teplus:anvil/merge/interaction/item_type/experience_crystal/increase_xp