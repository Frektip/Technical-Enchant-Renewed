#Compare if both of them are with the same Tier

execute store result score @s TCHA.Section1 run data get storage teplus:tech_anvil.ui CurrentItems[{Slot:2b}].tag.Content.Tier

execute store result score @s TCHA.Section2 run data get storage teplus:tech_anvil.ui CurrentItems[{Slot:6b}].tag.Content.Tier

execute if score @s TCHA.Section1 = @s TCHA.Section2 run function technical_anvil:interaction/item_type/experience_crystal/tier_increase
