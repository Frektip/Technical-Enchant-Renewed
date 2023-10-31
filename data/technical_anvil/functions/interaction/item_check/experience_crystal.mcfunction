tag @s add ComError

#check if it is trying to combine with another experience crystal or with a experience bottle
execute if score #xpcrtlm game.Opts matches 0 if data storage teplus:tech_anvil.ui CurrentItems[{Slot:6b}].tag.Teplus_xp_crystal run function technical_anvil:interaction/item_type/experience_crystal/combine_tier

execute if data storage teplus:tech_anvil.ui CurrentItems[{Slot:6b,id:"minecraft:experience_bottle"}] run function technical_anvil:interaction/item_type/experience_crystal/combine_bottle