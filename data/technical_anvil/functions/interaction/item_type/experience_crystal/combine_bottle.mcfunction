#Compare if the current max value is not reached yet

execute store result score #temp.currentvalue teplus.data run data get storage teplus:tech_anvil.ui CurrentItems[{Slot:2b}].tag.Content.Value[0]


execute store result score #temp.tier teplus.data run data get storage teplus:tech_anvil.ui CurrentItems[{Slot:2b}].tag.Content.Tier

scoreboard players operation #temp.tier teplus.data *= #250const teplus.data
scoreboard players operation @s TCHA.Section2 = #200const teplus.data
scoreboard players operation @s TCHA.Section2 += #temp.tier teplus.data

execute if score #temp.currentvalue teplus.data < @s TCHA.Section2 run function technical_anvil:interaction/item_type/experience_crystal/experience_increase